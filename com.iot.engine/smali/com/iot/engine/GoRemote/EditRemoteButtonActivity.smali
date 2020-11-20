.class public Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EditRemoteButtonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditRemoteButtonActivity"


# instance fields
.field private btnLearn:Landroid/widget/Button;

.field private db:LDatabase/DatabaseHandler;

.field private imgBack:Landroid/widget/ImageView;

.field private mButtonName:Ljava/lang/String;

.field private mColumnName:Ljava/lang/String;

.field private mRemoteInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Landroid/content/BroadcastReceiver;

.field private remoteType:Ljava/lang/String;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tvButtonName:Landroid/widget/TextView;

.field private tvResult:Landroid/widget/TextView;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 160
    new-instance v0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;

    invoke-direct {v0, p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;-><init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mRemoteInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->remoteType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->tvResult:Landroid/widget/TextView;

    return-object v0
.end method

.method private initiControl()V
    .locals 3

    .prologue
    .line 67
    const v0, 0x7f0d0136

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->tvButtonName:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0d0138

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->tvResult:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0d0137

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->btnLearn:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->txtHeading:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->imgBack:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->btnLearn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "btn_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mButtonName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "column_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mColumnName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tv_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "TV"

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->remoteType:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tv_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mRemoteInfo:Ljava/util/HashMap;

    .line 88
    :cond_0
    :goto_0
    const-string v0, "EditRemoteButtonActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mButtonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mColumnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " romt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mRemoteInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->tvButtonName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mButtonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Edit Button"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "music_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "Music"

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->remoteType:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "music_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mRemoteInfo:Ljava/util/HashMap;

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ac_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "AC"

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->remoteType:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ac_remote_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->mRemoteInfo:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 98
    :sswitch_0
    new-instance v1, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;-><init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 100
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;-><init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 112
    .end local v0    # "handler":Landroid/os/Handler;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->finish()V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f0d0137 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->setContentView(I)V

    .line 61
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->db:LDatabase/DatabaseHandler;

    .line 62
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->sessionManager:LSession/SessionManager;

    .line 63
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->initiControl()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 157
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 151
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "LearningMqttCallback"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    return-void
.end method
