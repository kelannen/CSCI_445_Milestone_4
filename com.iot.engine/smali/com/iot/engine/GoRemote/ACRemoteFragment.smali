.class public Lcom/iot/engine/GoRemote/ACRemoteFragment;
.super Landroid/support/v4/app/Fragment;
.source "ACRemoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRemoteFragment"


# instance fields
.field private btnCool:Landroid/widget/Button;

.field private btnSleep:Landroid/widget/Button;

.field private btnSwing:Landroid/widget/Button;

.field private btnTurbo:Landroid/widget/Button;

.field private db:LDatabase/DatabaseHandler;

.field private imgFan:Landroid/widget/ImageButton;

.field private imgMode:Landroid/widget/ImageButton;

.field private imgPowerOff:Landroid/widget/ImageButton;

.field private imgTempDown:Landroid/widget/ImageView;

.field private imgTempUp:Landroid/widget/ImageView;

.field private mMapOfButtonCode:Ljava/util/HashMap;
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

.field private rootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private sessionManager:LSession/SessionManager;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GoRemote/ACRemoteFragment;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/ACRemoteFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/GoRemote/ACRemoteFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/ACRemoteFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    return-object v0
.end method

.method private initiControl()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgPowerOff:Landroid/widget/ImageButton;

    .line 73
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgMode:Landroid/widget/ImageButton;

    .line 74
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgFan:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSwing:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnTurbo:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSleep:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnCool:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempUp:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempDown:Landroid/widget/ImageView;

    .line 84
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->setOnClickListner()V

    .line 85
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->onLongPressListner()V

    .line 87
    return-void
.end method

.method private onLongPressListner()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgPowerOff:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgFan:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSwing:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnTurbo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSleep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnCool:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    return-void
.end method

.method private setOnClickListner()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgPowerOff:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgFan:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSwing:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnTurbo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnSleep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->btnCool:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->imgTempDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Kindly Learn Button on Long press"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->toast:Landroid/widget/Toast;

    .line 236
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "switch_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "switch_onoff"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "mode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "swing"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "swing"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "swing_move"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "swing_move"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "turbo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 147
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "turbo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 149
    :cond_4
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 153
    :pswitch_5
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 154
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "sleep"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 160
    :pswitch_6
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "cool"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 161
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "cool"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 163
    :cond_6
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 167
    :pswitch_7
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "temp_up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 168
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "temp_up"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 170
    :cond_7
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 174
    :pswitch_8
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "temp_down"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 175
    new-instance v1, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "temp_down"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 177
    :cond_8
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f0d0099
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    .line 63
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->db:LDatabase/DatabaseHandler;

    .line 64
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->sessionManager:LSession/SessionManager;

    .line 65
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "btn_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getACRemoteInfoById(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    .line 66
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->initiControl()V

    .line 67
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Power on/Off"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "ok"

    .line 190
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "mode"

    .line 194
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 193
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Fan"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "swing"

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Swing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "swing_move"

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Turbo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "turbo"

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 209
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Sleep"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "sleep"

    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Cool"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "cool"

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 213
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Temperature +"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "temp_up"

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 217
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Temperature -"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "temp_down"

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ac_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0099
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
