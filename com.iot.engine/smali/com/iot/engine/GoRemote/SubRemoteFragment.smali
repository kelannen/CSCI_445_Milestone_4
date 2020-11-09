.class public Lcom/iot/engine/GoRemote/SubRemoteFragment;
.super Landroid/support/v4/app/Fragment;
.source "SubRemoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements LSession/IOnClickListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubRemoteFragment"


# instance fields
.field private btnEight:Landroid/widget/Button;

.field private btnFive:Landroid/widget/Button;

.field private btnFour:Landroid/widget/Button;

.field private btnLast:Landroid/widget/Button;

.field private btnNine:Landroid/widget/Button;

.field private btnOne:Landroid/widget/Button;

.field private btnSeven:Landroid/widget/Button;

.field private btnSix:Landroid/widget/Button;

.field private btnThree:Landroid/widget/Button;

.field private btnTwo:Landroid/widget/Button;

.field private btnZero:Landroid/widget/Button;

.field channelDown:Landroid/view/View;

.field channelLeft:Landroid/view/View;

.field channelNext:Landroid/view/View;

.field channelRight:Landroid/view/View;

.field channelUp:Landroid/view/View;

.field chnagePrev:Landroid/view/View;

.field count:I

.field count1:I

.field count2:I

.field db:LDatabase/DatabaseHandler;

.field decreseVol:Landroid/view/View;

.field favAdapter:LAdapter/FavouriteChannelDataAdapter;

.field private handler:Landroid/os/Handler;

.field imgBackButton:Landroid/widget/ImageView;

.field private imgBtnBlue:Landroid/widget/ImageButton;

.field private imgBtnGreen:Landroid/widget/ImageButton;

.field private imgBtnRed:Landroid/widget/ImageButton;

.field private imgBtnYellow:Landroid/widget/ImageButton;

.field imgEdit:Landroid/widget/ImageView;

.field imgExit:Landroid/widget/ImageView;

.field imgFavourite:Landroid/widget/ImageView;

.field imgHome:Landroid/widget/ImageView;

.field imgInput:Landroid/widget/ImageView;

.field imgMenu:Landroid/widget/ImageView;

.field imgMute:Landroid/widget/ImageView;

.field imgNumber:Landroid/widget/ImageView;

.field imgPowerOff:Landroid/widget/ImageView;

.field imgSettings:Landroid/widget/ImageView;

.field increaseVol:Landroid/view/View;

.field lLayout:Landroid/support/v7/widget/GridLayoutManager;

.field llFavourites:Landroid/widget/LinearLayout;

.field llMainMenu:Landroid/widget/LinearLayout;

.field llMenu:Landroid/widget/LinearLayout;

.field llMenuOption:Landroid/widget/LinearLayout;

.field llNumberScreeen:Landroid/widget/LinearLayout;

.field private mChannelNumber:Ljava/lang/String;

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

.field private message:Landroid/content/BroadcastReceiver;

.field ok:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private runnable:Ljava/lang/Runnable;

.field rvAllChannel:Landroid/support/v7/widget/RecyclerView;

.field private sessionManager:LSession/SessionManager;

.field toast:Landroid/widget/Toast;

.field tvBrand:Landroid/widget/TextView;

.field txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    iput v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    iput v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    iput v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/iot/engine/GoRemote/SubRemoteFragment$1;

    invoke-direct {v0, p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment$1;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->message:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;

    invoke-direct {v0, p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setAdapter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/GoRemote/SubRemoteFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/GoRemote/SubRemoteFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->parseChannelNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/iot/engine/GoRemote/SubRemoteFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iot/engine/GoRemote/SubRemoteFragment;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method private getColumnName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "remoteId"    # Ljava/lang/String;

    .prologue
    .line 861
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 884
    const-string v0, ""

    :goto_1
    return-object v0

    .line 861
    :pswitch_0
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 863
    :pswitch_a
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "one"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 865
    :pswitch_b
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "two"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 867
    :pswitch_c
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "three"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 869
    :pswitch_d
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "four"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 871
    :pswitch_e
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "five"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 873
    :pswitch_f
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "six"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 875
    :pswitch_10
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "seven"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 877
    :pswitch_11
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "eight"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 879
    :pswitch_12
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "nine"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 881
    :pswitch_13
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "zero"

    invoke-virtual {v0, v1, p2}, LDatabase/DatabaseHandler;->getNumberCodebyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 861
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private initializeControls()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMute:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgEdit:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgPowerOff:Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgInput:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgNumber:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMenu:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgFavourite:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->increaseVol:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->decreseVol:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelNext:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->chnagePrev:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelUp:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelLeft:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelRight:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelDown:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->ok:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgHome:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgSettings:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBackButton:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgExit:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnOne:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnTwo:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnThree:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFour:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFive:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSix:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSeven:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnEight:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnNine:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnZero:Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnLast:Landroid/widget/Button;

    .line 200
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llNumberScreeen:Landroid/widget/LinearLayout;

    .line 201
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenuOption:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rvAllChannel:Landroid/support/v7/widget/RecyclerView;

    .line 205
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->lLayout:Landroid/support/v7/widget/GridLayoutManager;

    .line 207
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llFavourites:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMainMenu:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rvAllChannel:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->lLayout:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v2, "company_name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method private onLongPressListner()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgSettings:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgExit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->ok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnOne:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnTwo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnThree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFour:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSix:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSeven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnEight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnNine:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnZero:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnLast:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMute:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgPowerOff:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgInput:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgNumber:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgFavourite:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->increaseVol:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->decreseVol:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->chnagePrev:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnRed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 309
    return-void
.end method

.method private parseChannelNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "channelNumber"    # Ljava/lang/String;
    .param p2, "remote_id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 840
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 841
    const-string v2, ""

    .local v2, "mData":Ljava/lang/String;
    const-string v3, "0"

    .line 842
    .local v3, "mflag":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 843
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 844
    .local v1, "mChannel":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getColumnName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "numCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 846
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_0
    const-string v3, "1"

    .line 849
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kindly learn number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on long press"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 854
    .end local v1    # "mChannel":C
    .end local v4    # "numCode":Ljava/lang/String;
    :cond_1
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 855
    new-instance v5, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 858
    .end local v0    # "i":I
    .end local v2    # "mData":Ljava/lang/String;
    .end local v3    # "mflag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setAdapter(Ljava/lang/String;)V
    .locals 7
    .param p1, "addOperations"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "mMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "remote_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->getChannelDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 153
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "channelnumber"

    const-string v1, "add"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, LAdapter/FavouriteChannelDataAdapter;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v4, "remote_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LAdapter/FavouriteChannelDataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/iot/engine/GoRemote/SubRemoteFragment;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->favAdapter:LAdapter/FavouriteChannelDataAdapter;

    .line 158
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rvAllChannel:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->favAdapter:LAdapter/FavouriteChannelDataAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 159
    return-void
.end method

.method private setListner()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMute:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgPowerOff:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgInput:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgNumber:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgFavourite:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->increaseVol:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->decreseVol:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->chnagePrev:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnOne:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnTwo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnThree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFour:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnFive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSix:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnSeven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnEight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnNine:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnZero:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->btnLast:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->channelRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->ok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    .line 251
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    .line 252
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnRed:Landroid/widget/ImageButton;

    .line 253
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    .line 255
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgSettings:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgExit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnBlue:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnGreen:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnRed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->imgBtnYellow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Kindly Learn Button on Long press"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->toast:Landroid/widget/Toast;

    .line 829
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 831
    return-void
.end method


# virtual methods
.method public deleteChannelById(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0, p1}, LDatabase/DatabaseHandler;->deleteChannel(Ljava/lang/String;)V

    .line 889
    const-string v0, "ADD"

    invoke-direct {p0, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setAdapter(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x5dc

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 806
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 452
    :sswitch_1
    iget v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    if-ne v0, v2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llNumberScreeen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iput v4, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenuOption:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llFavourites:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMainMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    .line 468
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llNumberScreeen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    goto :goto_1

    .line 474
    :sswitch_2
    iget v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    if-ne v0, v2, :cond_2

    .line 476
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenuOption:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iput v4, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    .line 487
    :goto_2
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llNumberScreeen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llFavourites:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMainMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    .line 493
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenuOption:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    goto :goto_2

    .line 499
    :sswitch_3
    iget v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    if-ne v0, v2, :cond_3

    .line 500
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llFavourites:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMainMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iput v4, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    .line 507
    const-string v0, "ADD"

    invoke-direct {p0, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setAdapter(Ljava/lang/String;)V

    .line 518
    :goto_3
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llNumberScreeen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenuOption:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count:I

    .line 521
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count1:I

    goto/16 :goto_0

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llFavourites:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->llMainMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->tvBrand:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iput v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->count2:I

    goto :goto_3

    .line 526
    :sswitch_4
    const-string v0, "EDIT"

    invoke-direct {p0, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setAdapter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :sswitch_5
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "switch_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 531
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "switch_onoff"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 533
    :cond_4
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 539
    :sswitch_6
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 540
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "input"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 542
    :cond_5
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 549
    :sswitch_7
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 550
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "mute"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 552
    :cond_6
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 556
    :sswitch_8
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "vol_plus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 557
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "vol_plus"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 560
    :cond_7
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 564
    :sswitch_9
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "vol_minus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 565
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "vol_minus"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 567
    :cond_8
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 572
    :sswitch_a
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "chal_plus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 574
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "chal_plus"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 576
    :cond_9
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 580
    :sswitch_b
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "chal_minus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 581
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "chal_minus"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 583
    :cond_a
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 587
    :sswitch_c
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "one"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "one"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 589
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 590
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 591
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 595
    :cond_c
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 599
    :sswitch_d
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "two"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "two"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 604
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 607
    :cond_d
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 611
    :sswitch_e
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "three"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "three"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 616
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 619
    :cond_e
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 623
    :sswitch_f
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "four"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "four"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 628
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 631
    :cond_f
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 636
    :sswitch_10
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "five"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "five"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 641
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 644
    :cond_10
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 648
    :sswitch_11
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "six"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "six"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 653
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 656
    :cond_11
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 660
    :sswitch_12
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "seven"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "seven"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 665
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 668
    :cond_12
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 672
    :sswitch_13
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "eight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "eight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 677
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 680
    :cond_13
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 684
    :sswitch_14
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "nine"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "nine"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 689
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 692
    :cond_14
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 697
    :sswitch_15
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "zero"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "zero"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mChannelNumber:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    .line 702
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 705
    :cond_15
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 712
    :sswitch_16
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 713
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 715
    :cond_16
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 719
    :sswitch_17
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 720
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "setting"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 722
    :cond_17
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 726
    :sswitch_18
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 727
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "back"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 729
    :cond_18
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 733
    :sswitch_19
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 734
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "exit"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 736
    :cond_19
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 740
    :sswitch_1a
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 741
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_up"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 743
    :cond_1a
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 747
    :sswitch_1b
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_backword"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 748
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_backword"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 750
    :cond_1b
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 754
    :sswitch_1c
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_down"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 755
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_down"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 757
    :cond_1c
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 761
    :sswitch_1d
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "rad_forward"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 762
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "rad_forward"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 764
    :cond_1d
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 768
    :sswitch_1e
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 769
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 771
    :cond_1e
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 777
    :sswitch_1f
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "blue"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 778
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "blue"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 780
    :cond_1f
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 784
    :sswitch_20
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 785
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "green"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 787
    :cond_20
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 791
    :sswitch_21
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 792
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "red"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 794
    :cond_21
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 798
    :sswitch_22
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v1, "yellow"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 799
    new-instance v1, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;

    invoke-direct {v1, p0, v3}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;Lcom/iot/engine/GoRemote/SubRemoteFragment$1;)V

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    const-string v3, "yellow"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment$IRFireServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 801
    :cond_22
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->showToast()V

    goto/16 :goto_0

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x7f0d0099 -> :sswitch_5
        0x7f0d00c3 -> :sswitch_c
        0x7f0d00c4 -> :sswitch_f
        0x7f0d00c5 -> :sswitch_12
        0x7f0d00c7 -> :sswitch_d
        0x7f0d00c8 -> :sswitch_10
        0x7f0d00c9 -> :sswitch_13
        0x7f0d00ca -> :sswitch_15
        0x7f0d00cb -> :sswitch_e
        0x7f0d00cc -> :sswitch_11
        0x7f0d00cd -> :sswitch_14
        0x7f0d0156 -> :sswitch_0
        0x7f0d01bc -> :sswitch_16
        0x7f0d01bd -> :sswitch_18
        0x7f0d01be -> :sswitch_1a
        0x7f0d01bf -> :sswitch_1b
        0x7f0d01c0 -> :sswitch_1e
        0x7f0d01c1 -> :sswitch_1d
        0x7f0d01c2 -> :sswitch_1c
        0x7f0d01c5 -> :sswitch_22
        0x7f0d01c6 -> :sswitch_21
        0x7f0d01c7 -> :sswitch_20
        0x7f0d01c8 -> :sswitch_1f
        0x7f0d0219 -> :sswitch_4
        0x7f0d021c -> :sswitch_7
        0x7f0d021d -> :sswitch_6
        0x7f0d021f -> :sswitch_8
        0x7f0d0220 -> :sswitch_9
        0x7f0d0221 -> :sswitch_a
        0x7f0d0222 -> :sswitch_b
        0x7f0d0225 -> :sswitch_0
        0x7f0d0227 -> :sswitch_17
        0x7f0d0228 -> :sswitch_19
        0x7f0d0229 -> :sswitch_1
        0x7f0d022a -> :sswitch_2
        0x7f0d022b -> :sswitch_3
    .end sparse-switch
.end method

.method public onClickListner(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "channelnumber"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "remote_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->parseChannelNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    const v0, 0x7f040094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    .line 117
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    .line 118
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->sessionManager:LSession/SessionManager;

    .line 119
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "btn_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getTvRemoteInfoById(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    .line 121
    const-string v0, "SubRemoteFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->initializeControls()V

    .line 123
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setListner()V

    .line 124
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->onLongPressListner()V

    .line 125
    const-string v0, "ADD"

    invoke-direct {p0, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->setAdapter(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 439
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 316
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Mute"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "mute"

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 320
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Power ON/OFF"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "switch_onoff"

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 320
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 324
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Input"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "input"

    .line 325
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Volumn +"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "vol_plus"

    .line 329
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 328
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 332
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Volumn -"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "vol_minus"

    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Channel +"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "chal_plus"

    .line 337
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 336
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 340
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Channel -"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "chal_minus"

    .line 341
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "one"

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 344
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "two"

    .line 349
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 352
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "three"

    .line 353
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 352
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 356
    :sswitch_b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "four"

    .line 357
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 356
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "five"

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 360
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 364
    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "six"

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 364
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 368
    :sswitch_e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "seven"

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 368
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 372
    :sswitch_f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "eight"

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 372
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 376
    :sswitch_10
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "9"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "nine"

    .line 377
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 376
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 380
    :sswitch_11
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "zero"

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 380
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 386
    :sswitch_12
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Home"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "home"

    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 386
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    :sswitch_13
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Setting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "setting"

    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 390
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    :sswitch_14
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Back"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "back"

    .line 395
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 394
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 398
    :sswitch_15
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Exit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "exit"

    .line 399
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 398
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 402
    :sswitch_16
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Up"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_up"

    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 402
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 406
    :sswitch_17
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Backward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_backword"

    .line 407
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 406
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 410
    :sswitch_18
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Down"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_down"

    .line 411
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 410
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 414
    :sswitch_19
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "rad_forward"

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 414
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    :sswitch_1a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Radial Ok"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "ok"

    .line 419
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 418
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 422
    :sswitch_1b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Blue"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "blue"

    .line 423
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 422
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 426
    :sswitch_1c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Green"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "green"

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 426
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 430
    :sswitch_1d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Red"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "red"

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 434
    :sswitch_1e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "btn_name"

    const-string v3, "Yellow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "column_number"

    const-string v3, "yellow"

    .line 435
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tv_remote_table"

    iget-object v3, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->mMapOfButtonCode:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 434
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0099 -> :sswitch_2
        0x7f0d00c3 -> :sswitch_8
        0x7f0d00c4 -> :sswitch_b
        0x7f0d00c5 -> :sswitch_e
        0x7f0d00c7 -> :sswitch_9
        0x7f0d00c8 -> :sswitch_c
        0x7f0d00c9 -> :sswitch_f
        0x7f0d00ca -> :sswitch_11
        0x7f0d00cb -> :sswitch_a
        0x7f0d00cc -> :sswitch_d
        0x7f0d00cd -> :sswitch_10
        0x7f0d01bc -> :sswitch_12
        0x7f0d01bd -> :sswitch_14
        0x7f0d01be -> :sswitch_16
        0x7f0d01bf -> :sswitch_17
        0x7f0d01c0 -> :sswitch_1a
        0x7f0d01c1 -> :sswitch_19
        0x7f0d01c2 -> :sswitch_18
        0x7f0d01c5 -> :sswitch_1e
        0x7f0d01c6 -> :sswitch_1d
        0x7f0d01c7 -> :sswitch_1c
        0x7f0d01c8 -> :sswitch_1b
        0x7f0d021c -> :sswitch_1
        0x7f0d021d -> :sswitch_3
        0x7f0d021f -> :sswitch_4
        0x7f0d0220 -> :sswitch_5
        0x7f0d0221 -> :sswitch_6
        0x7f0d0222 -> :sswitch_7
        0x7f0d0225 -> :sswitch_0
        0x7f0d0227 -> :sswitch_13
        0x7f0d0228 -> :sswitch_15
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refreshChannelList"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 133
    return-void
.end method
