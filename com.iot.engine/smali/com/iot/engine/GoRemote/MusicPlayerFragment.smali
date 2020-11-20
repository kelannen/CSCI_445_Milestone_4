.class public Lcom/iot/engine/GoRemote/MusicPlayerFragment;
.super Landroid/support/v4/app/Fragment;
.source "MusicPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayerFragment"


# instance fields
.field private channelDown:Landroid/view/View;

.field private channelLeft:Landroid/view/View;

.field private channelRight:Landroid/view/View;

.field private channelUp:Landroid/view/View;

.field private db:LDatabase/DatabaseHandler;

.field private imgBackButton:Landroid/widget/ImageView;

.field private imgBtnBlue:Landroid/widget/ImageButton;

.field private imgBtnGreen:Landroid/widget/ImageButton;

.field private imgBtnMusicBackward:Landroid/widget/ImageButton;

.field private imgBtnMusicForward:Landroid/widget/ImageButton;

.field private imgBtnMusicPlay:Landroid/widget/ImageButton;

.field private imgBtnMusicStop:Landroid/widget/ImageButton;

.field private imgBtnOpen:Landroid/widget/ImageButton;

.field private imgBtnPower:Landroid/widget/ImageButton;

.field private imgBtnRed:Landroid/widget/ImageButton;

.field private imgBtnYellow:Landroid/widget/ImageButton;

.field private imgDiscMenu:Landroid/widget/ImageView;

.field private imgHome:Landroid/widget/ImageView;

.field private imgPopup:Landroid/widget/ImageView;

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

.field private ok:Landroid/view/View;

.field private rootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private sessionManager:LSession/SessionManager;

.field private toast:Landroid/widget/Toast;

.field private tvAudio:Landroid/widget/TextView;

.field private tvBrand:Landroid/widget/TextView;

.field private tvSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GoRemote/MusicPlayerFragment;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/MusicPlayerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/GoRemote/MusicPlayerFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/MusicPlayerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    return-object v0
.end method

.method private initiControl()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvSubtitle:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvAudio:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgPopup:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBackButton:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgDiscMenu:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgHome:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelUp:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelLeft:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelRight:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelDown:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->ok:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnPower:Landroid/widget/ImageButton;

    .line 107
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnOpen:Landroid/widget/ImageButton;

    .line 109
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    .line 110
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnRed:Landroid/widget/ImageButton;

    .line 112
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    .line 114
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicForward:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicPlay:Landroid/widget/ImageButton;

    .line 116
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicStop:Landroid/widget/ImageButton;

    .line 117
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicBackward:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvBrand:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvBrand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v2, "company_name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->setOnClickListener()V

    .line 122
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->setOnLongPressListener()V

    .line 124
    return-void
.end method

.method private setOnClickListener()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvAudio:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgPopup:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgDiscMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnRed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->ok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicForward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicBackward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    return-void
.end method

.method private setOnLongPressListener()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvAudio:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgPopup:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgDiscMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnRed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->channelRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->ok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicForward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->imgBtnMusicBackward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Kindly Learn Button on Long press"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->toast:Landroid/widget/Toast;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->toast:Landroid/widget/Toast;

    const-string v1, "Kindly Learn Button on Long press"

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 454
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
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

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "back"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "disc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "disc"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 220
    :pswitch_4
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "switch_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 221
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "switch_onoff"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 227
    :pswitch_5
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "disc_open"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "disc_open"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 234
    :pswitch_6
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "blue"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 235
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "blue"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 237
    :cond_6
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 241
    :pswitch_7
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 242
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "green"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 244
    :cond_7
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 248
    :pswitch_8
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 249
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "red"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 251
    :cond_8
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 255
    :pswitch_9
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "yellow"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 256
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "yellow"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 258
    :cond_9
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 262
    :pswitch_a
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 263
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "forward"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 265
    :cond_a
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 269
    :pswitch_b
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 270
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "play"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 272
    :cond_b
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 276
    :pswitch_c
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 277
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "stop"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 279
    :cond_c
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 284
    :pswitch_d
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "backword"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 285
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "backword"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 287
    :cond_d
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 291
    :pswitch_e
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 292
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 294
    :cond_e
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 298
    :pswitch_f
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 299
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "subtitle"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 301
    :cond_f
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 306
    :pswitch_10
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 307
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_up"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 309
    :cond_10
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 313
    :pswitch_11
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_down"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_down"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 314
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_down"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 316
    :cond_11
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 320
    :pswitch_12
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_backword"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_backword"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 321
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_backword"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 323
    :cond_12
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 327
    :pswitch_13
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_forward"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_forward"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 328
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_forward"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 330
    :cond_13
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 334
    :pswitch_14
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 335
    new-instance v1, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/MusicPlayerFragment;Lcom/iot/engine/GoRemote/MusicPlayerFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/MusicPlayerFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 337
    :cond_14
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->showToast()V

    goto/16 :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x7f0d01b8
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .line 80
    const v0, 0x7f040077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    .line 81
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->sessionManager:LSession/SessionManager;

    .line 82
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->db:LDatabase/DatabaseHandler;

    .line 83
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "btn_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getMusicRemoteInfoById(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    .line 84
    const-string v0, "MusicPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Music onCreateView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->initiControl()V

    .line 87
    iget-object v0, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 413
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Title/PopUp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Back"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "back"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Disc Menu"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "disc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 358
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Home"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "home"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 361
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Power ON/OFF"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "switch_onoff"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 364
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Open DISC"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "disc_open"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 367
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Blue"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "blue"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Green"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "green"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 373
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Red"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "red"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 376
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Yellow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "yellow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 379
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Music Forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Music Backward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "backword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 385
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Music Stop"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "stop"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    :pswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Music Play/Pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "play"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 391
    :pswitch_e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Audio"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "audio"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    :pswitch_f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "SubTitle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "subtitle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 397
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Up"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_up"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    :pswitch_11
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Down"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_down"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    :pswitch_12
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Backward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_backword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 406
    :pswitch_13
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 409
    :pswitch_14
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Ok"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "ok"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "music_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/MusicPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01b8
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
