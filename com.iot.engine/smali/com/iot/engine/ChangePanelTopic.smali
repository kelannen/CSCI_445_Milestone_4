.class public Lcom/iot/engine/ChangePanelTopic;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChangePanelTopic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field edtChangeTopic:Landroid/widget/EditText;

.field private imgBack:Landroid/widget/ImageView;

.field sessionManager:LSession/SessionManager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePanelTopic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->edtChangeTopic:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePanelTopic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->btnSubmit:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePanelTopic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->txtHeading:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePanelTopic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->imgBack:Landroid/widget/ImageView;

    .line 37
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->sessionManager:LSession/SessionManager;

    .line 39
    iget-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Change Topic"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->edtChangeTopic:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/ChangePanelTopic;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/iot/engine/ChangePanelTopic;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 51
    :sswitch_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/iot/engine/ChangePanelTopic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 52
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/ChangePanelTopic;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 54
    iget-object v2, p0, Lcom/iot/engine/ChangePanelTopic;->edtChangeTopic:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "mNewTopic":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "Kindly enter topic Name."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/ChangePanelTopic;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v1}, LSession/SessionManager;->setTopicName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/iot/engine/ChangePanelTopic;->finish()V

    .line 62
    const-string v2, "Update Topic name successfully."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "mNewTopic":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/ChangePanelTopic;->finish()V

    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePanelTopic;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/iot/engine/ChangePanelTopic;->initComponent()V

    .line 30
    return-void
.end method
