.class public Lcom/iot/engine/ChangeIPActivity;
.super Landroid/app/Activity;
.source "ChangeIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PATTERN:Ljava/lang/String; = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"


# instance fields
.field imgBack:Landroid/widget/ImageView;

.field mAddress:Ljava/lang/String;

.field private mBtnSumit:Landroid/widget/Button;

.field mEdtNewIp:Landroid/widget/EditText;

.field mEdtOldIp:Landroid/widget/EditText;

.field mRoomId:Ljava/lang/String;

.field sessionManager:LSession/SessionManager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mAddress:Ljava/lang/String;

    return-void
.end method

.method private getRoomIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getFirstString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mAddress:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mAddress:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getSecondString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getThirdString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangeIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mEdtOldIp:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangeIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mEdtNewIp:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangeIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mBtnSumit:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangeIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->txtHeading:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Change IP"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangeIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->imgBack:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mEdtOldIp:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/iot/engine/ChangeIPActivity;->getRoomIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mEdtNewIp:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/iot/engine/ChangeIPActivity;->getRoomIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/iot/engine/ChangeIPActivity;->mBtnSumit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private onClickOfSubmitButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->mEdtNewIp:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "mNewIP":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "Kindly enter IP."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v1}, Lcom/iot/engine/ChangeIPActivity;->validate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    const-string v2, "Kindly enter IP in proper Format."

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v1}, LSession/SessionManager;->setFirstString(Ljava/lang/String;)V

    .line 112
    :cond_2
    :goto_1
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    invoke-virtual {v0, v2}, LDatabase/DatabaseHandler;->deleteRoomSwitchData(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/iot/engine/ChangeIPActivity;->finish()V

    goto :goto_0

    .line 106
    .end local v0    # "db":LDatabase/DatabaseHandler;
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v1}, LSession/SessionManager;->setSecondString(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v1}, LSession/SessionManager;->setThirdString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v2, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 127
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 128
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 81
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/ChangeIPActivity;->onClickOfSubmitButton()V

    goto :goto_0

    .line 83
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/ChangeIPActivity;->finish()V

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangeIPActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/iot/engine/ChangeIPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "RoomId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/ChangeIPActivity;->mRoomId:Ljava/lang/String;

    .line 43
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/ChangeIPActivity;->sessionManager:LSession/SessionManager;

    .line 44
    invoke-direct {p0}, Lcom/iot/engine/ChangeIPActivity;->getRoomIP()Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/iot/engine/ChangeIPActivity;->initializeControls()V

    .line 46
    return-void
.end method
