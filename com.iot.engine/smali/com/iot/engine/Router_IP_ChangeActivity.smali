.class public Lcom/iot/engine/Router_IP_ChangeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Router_IP_ChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PATTERN:Ljava/lang/String; = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private edtOldIpAddress:Landroid/widget/EditText;

.field private imgBack:Landroid/widget/ImageView;

.field sessionManager:LSession/SessionManager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v2, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 87
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 53
    :sswitch_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/iot/engine/Router_IP_ChangeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/Router_IP_ChangeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 56
    iget-object v2, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->edtOldIpAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "mNewIP":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "Kindly enter router IP"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v1}, Lcom/iot/engine/Router_IP_ChangeActivity;->validate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const-string v2, "Kindly enter IP in proper Format."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v1}, LSession/SessionManager;->setRouterIP(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/iot/engine/Router_IP_ChangeActivity;->finish()V

    .line 69
    const-string v2, "Update successfully."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "mNewIP":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/Router_IP_ChangeActivity;->finish()V

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/iot/engine/Router_IP_ChangeActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/iot/engine/Router_IP_ChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->edtOldIpAddress:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/Router_IP_ChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->btnSubmit:Landroid/widget/Button;

    .line 38
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/Router_IP_ChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->txtHeading:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/Router_IP_ChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->imgBack:Landroid/widget/ImageView;

    .line 40
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->sessionManager:LSession/SessionManager;

    .line 42
    iget-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Change Router IP"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->edtOldIpAddress:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/iot/engine/Router_IP_ChangeActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
