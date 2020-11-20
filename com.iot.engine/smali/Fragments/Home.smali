.class public LFragments/Home;
.super Landroid/support/v4/app/Fragment;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/Home$AsyncEnterLockPasscode;,
        LFragments/Home$AsyncArmActivation;,
        LFragments/Home$AsyncTaskForModeActivation;,
        LFragments/Home$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Home"


# instance fields
.field private coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field private cordArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LSession/MyCord;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private count1:I

.field private count2:I

.field private count3:I

.field db:LDatabase/DatabaseHandler;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private fab1:Landroid/support/design/widget/FloatingActionButton;

.field private fab2:Landroid/support/design/widget/FloatingActionButton;

.field private fab3:Landroid/support/design/widget/FloatingActionButton;

.field private fabArm:Landroid/support/design/widget/FloatingActionButton;

.field private fabBGLayout:Landroid/view/View;

.field private fabLayout1:Landroid/widget/LinearLayout;

.field private fabLayout2:Landroid/widget/LinearLayout;

.field private fabLayout3:Landroid/widget/LinearLayout;

.field private fabLayoutArm:Landroid/widget/LinearLayout;

.field private fabLayoutLock:Landroid/widget/LinearLayout;

.field private fabLock:Landroid/support/design/widget/FloatingActionButton;

.field isFABOpen:Z

.field private llLeftSide:Landroid/widget/LinearLayout;

.field private llRightSide:Landroid/widget/LinearLayout;

.field private mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

.field mNumberOfBlast:I

.field private message:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private rrCountScreen:Landroid/widget/RelativeLayout;

.field private session:LSession/SessionManager;

.field private startMillis:J

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tab_badge_activity:Landroid/widget/TextView;

.field private tab_badge_room:Landroid/widget/TextView;

.field private tvFab1Name:Landroid/widget/TextView;

.field private tvFab2Name:Landroid/widget/TextView;

.field private tvFab3Name:Landroid/widget/TextView;

.field private tvFabArm:Landroid/widget/TextView;

.field private tvInternetMsg:Landroid/widget/TextView;

.field private txtActivity:Landroid/widget/TextView;

.field private txtCount:Landroid/widget/TextView;

.field private txtM:Landroid/widget/TextView;

.field private txtProfile:Landroid/widget/TextView;

.field private txtRoom:Landroid/widget/TextView;

.field private txtSafe:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    iput-boolean v2, p0, LFragments/Home;->isFABOpen:Z

    .line 94
    iput v2, p0, LFragments/Home;->mNumberOfBlast:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LFragments/Home;->startMillis:J

    .line 100
    iput v2, p0, LFragments/Home;->count:I

    iput v2, p0, LFragments/Home;->count2:I

    .line 644
    new-instance v0, LFragments/Home$5;

    invoke-direct {v0, p0}, LFragments/Home$5;-><init>(LFragments/Home;)V

    iput-object v0, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private AlertSetHomeLock()V
    .locals 5

    .prologue
    .line 408
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 410
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 411
    const v4, 0x7f04004e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 412
    const v4, 0x7f0d00a5

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 413
    .local v1, "btnok":Landroid/widget/TextView;
    const v4, 0x7f0d00d7

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 415
    .local v0, "btncancel":Landroid/widget/TextView;
    const v4, 0x7f0d0131

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 418
    .local v3, "edtPasscode":Landroid/widget/EditText;
    new-instance v4, LFragments/Home$2;

    invoke-direct {v4, p0, v3, v2}, LFragments/Home$2;-><init>(LFragments/Home;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v4, LFragments/Home$3;

    invoke-direct {v4, p0, v2}, LFragments/Home$3;-><init>(LFragments/Home;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 442
    return-void
.end method

.method static synthetic access$000(LFragments/Home;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->txtProfile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(LFragments/Home;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->txtActivity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(LFragments/Home;)I
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget v0, p0, LFragments/Home;->count3:I

    return v0
.end method

.method static synthetic access$1200(LFragments/Home;)I
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget v0, p0, LFragments/Home;->count1:I

    return v0
.end method

.method static synthetic access$1300(LFragments/Home;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LFragments/Home;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, LFragments/Home;->setInternetSataus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(LFragments/Home;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LFragments/Home;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, LFragments/Home;->showBlastInHome(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(LFragments/Home;)V
    .locals 0
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    invoke-direct {p0}, LFragments/Home;->setTotalCountNew()V

    return-void
.end method

.method static synthetic access$1600(LFragments/Home;)V
    .locals 0
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    invoke-direct {p0}, LFragments/Home;->setArmFunction()V

    return-void
.end method

.method static synthetic access$1700(LFragments/Home;)Ltyrantgit/explosionfield/ExplosionField;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

    return-object v0
.end method

.method static synthetic access$1800(LFragments/Home;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1802(LFragments/Home;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # LFragments/Home;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 78
    iput-object p1, p0, LFragments/Home;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1900(LFragments/Home;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(LFragments/Home;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->txtRoom:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(LFragments/Home;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->session:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$500(LFragments/Home;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(LFragments/Home;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(LFragments/Home;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(LFragments/Home;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(LFragments/Home;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Home;

    .prologue
    .line 78
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private callModeActivationService(Ljava/util/HashMap;)V
    .locals 5
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
    .line 564
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "on_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "on_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "off_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "off_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/SwitchSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, "intentON":Landroid/content/Intent;
    const-string v1, "ACTION"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v2, "ID"

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, LFragments/Home;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    .end local v0    # "intentON":Landroid/content/Intent;
    :goto_0
    return-void

    .line 573
    :cond_2
    new-instance v2, LFragments/Home$AsyncTaskForModeActivation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LFragments/Home$AsyncTaskForModeActivation;-><init>(LFragments/Home;LFragments/Home$1;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, LFragments/Home$AsyncTaskForModeActivation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private closeFABMenu()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, LFragments/Home;->isFABOpen:Z

    .line 502
    iget-object v0, p0, LFragments/Home;->fabBGLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 507
    iget-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 508
    iget-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 509
    iget-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LFragments/Home$4;

    invoke-direct {v1, p0}, LFragments/Home$4;-><init>(LFragments/Home;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 538
    return-void
.end method

.method private createImageView(Ljava/lang/String;)V
    .locals 8
    .param p1, "imageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 714
    :try_start_0
    new-instance v3, Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 715
    .local v3, "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderWidth(I)V

    .line 716
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b0083

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V

    .line 718
    iget v5, p0, LFragments/Home;->mNumberOfBlast:I

    iget-object v6, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 719
    iget-object v5, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    iget v6, p0, LFragments/Home;->mNumberOfBlast:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSession/MyCord;

    .line 720
    .local v0, "cord":LSession/MyCord;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 721
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, LSession/MyCord;->getX()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 722
    invoke-virtual {v0}, LSession/MyCord;->getY()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 723
    iget-object v5, p0, LFragments/Home;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    const-string v5, "PH"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    const v6, 0x7f02016c

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f020175

    .line 727
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const/16 v6, 0x50

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 728
    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 735
    :goto_0
    iget v5, p0, LFragments/Home;->mNumberOfBlast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LFragments/Home;->mNumberOfBlast:I

    .line 756
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 757
    .local v2, "handler":Landroid/os/Handler;
    new-instance v5, LFragments/Home$6;

    invoke-direct {v5, p0, v3}, LFragments/Home$6;-><init>(LFragments/Home;Lde/hdodenhof/circleimageview/CircleImageView;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    .end local v0    # "cord":LSession/MyCord;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    return-void

    .line 730
    .restart local v0    # "cord":LSession/MyCord;
    .restart local v3    # "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f020175

    .line 731
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const/16 v6, 0x50

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 732
    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    .end local v0    # "cord":LSession/MyCord;
    .end local v3    # "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 737
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, LFragments/Home;->mNumberOfBlast:I

    .line 738
    iget-object v5, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    iget v6, p0, LFragments/Home;->mNumberOfBlast:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSession/MyCord;

    .line 739
    .restart local v0    # "cord":LSession/MyCord;
    const-string v5, "PH"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 740
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    const v6, 0x7f02016c

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f020175

    .line 741
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const/16 v6, 0x50

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 742
    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 748
    :goto_3
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x50

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 749
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, LSession/MyCord;->getX()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 750
    invoke-virtual {v0}, LSession/MyCord;->getY()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 751
    iget-object v5, p0, LFragments/Home;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    iget v5, p0, LFragments/Home;->mNumberOfBlast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LFragments/Home;->mNumberOfBlast:I

    goto/16 :goto_1

    .line 744
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f020175

    .line 745
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const/16 v6, 0x50

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 746
    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private createTabIcons()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0d00fe

    const v5, 0x7f040039

    .line 208
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 209
    .local v0, "tabView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LFragments/Home;->txtRoom:Landroid/widget/TextView;

    .line 210
    iget-object v3, p0, LFragments/Home;->txtRoom:Landroid/widget/TextView;

    const-string v4, "ROOMS"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v3, 0x7f0d0100

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LFragments/Home;->tab_badge_room:Landroid/widget/TextView;

    .line 212
    iget-object v3, p0, LFragments/Home;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 219
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 220
    .local v1, "tabView2":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LFragments/Home;->txtActivity:Landroid/widget/TextView;

    .line 221
    const v3, 0x7f0d00ff

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LFragments/Home;->tab_badge_activity:Landroid/widget/TextView;

    .line 222
    iget-object v3, p0, LFragments/Home;->txtActivity:Landroid/widget/TextView;

    const-string v4, "UPDATES"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, LFragments/Home;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 225
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 226
    .local v2, "tabView3":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LFragments/Home;->txtProfile:Landroid/widget/TextView;

    .line 227
    iget-object v3, p0, LFragments/Home;->txtProfile:Landroid/widget/TextView;

    const-string v4, "MOODS"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, LFragments/Home;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 230
    invoke-virtual {p0}, LFragments/Home;->setActivityCount()V

    .line 232
    return-void
.end method

.method private generateCooridinate()V
    .locals 7

    .prologue
    .line 674
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 675
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 676
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 678
    .local v2, "width":I
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    const/16 v5, 0x32

    const/16 v6, 0x3c

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    add-int/lit16 v5, v2, -0xc8

    const/16 v6, 0x3c

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x28

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x3

    const/16 v6, 0xfa

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x4

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, -0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    const/16 v5, 0x28

    const/16 v6, 0x32

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    add-int/lit16 v5, v2, -0x118

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x4

    const/16 v6, 0xfa

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x3

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x78

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x4

    const/16 v6, 0x78

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x3c

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    const/16 v5, 0x14

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v3, p0, LFragments/Home;->cordArrayList:Ljava/util/ArrayList;

    new-instance v4, LSession/MyCord;

    const/16 v5, 0x12c

    const/16 v6, 0x3c

    invoke-direct {v4, v5, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "width":I
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initialaseControlOfFab()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->llLeftSide:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->llRightSide:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    .line 146
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    .line 150
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fabLock:Landroid/support/design/widget/FloatingActionButton;

    .line 153
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 154
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fab1:Landroid/support/design/widget/FloatingActionButton;

    .line 155
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fab2:Landroid/support/design/widget/FloatingActionButton;

    .line 156
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fab3:Landroid/support/design/widget/FloatingActionButton;

    .line 157
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, LFragments/Home;->fabArm:Landroid/support/design/widget/FloatingActionButton;

    .line 159
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->tvFab1Name:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->tvFab2Name:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->tvFab3Name:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->tvFabArm:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->txtSafe:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/Home;->fabBGLayout:Landroid/view/View;

    .line 167
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, LFragments/Home;->rrCountScreen:Landroid/widget/RelativeLayout;

    .line 168
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->txtCount:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->txtM:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, LFragments/Home;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, LFragments/Home;->fabBGLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, LFragments/Home;->llRightSide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, LFragments/Home;->llLeftSide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, LFragments/Home;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 184
    invoke-direct {p0}, LFragments/Home;->setArmFunction()V

    .line 186
    return-void
.end method

.method private setArmFunction()V
    .locals 4

    .prologue
    const v3, 0x7f0b006a

    const v2, 0x7f0b0054

    .line 188
    iget-object v0, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getArmFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Internet"

    :goto_0
    iput-object v0, p0, LFragments/Home;->messageType:Ljava/lang/String;

    .line 193
    iget-object v0, p0, LFragments/Home;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 194
    iget-object v0, p0, LFragments/Home;->txtM:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, LFragments/Home;->txtSafe:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :goto_1
    return-void

    .line 191
    :cond_0
    const-string v0, "Localhub"

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, LFragments/Home;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, LFragments/Home;->txtM:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, LFragments/Home;->txtSafe:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setInternetSataus(Ljava/lang/String;)V
    .locals 2
    .param p1, "internet_test"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, LFragments/Home;->tvInternetMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, LFragments/Home;->tvInternetMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setShortcutMenu()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 772
    iget-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    iget-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 775
    iget-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    iget-object v0, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getArmFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, LFragments/Home;->tvFabArm:Landroid/widget/TextView;

    const-string v1, " Disarm "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, LFragments/Home;->tvFabArm:Landroid/widget/TextView;

    const-string v1, "  Arm   "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTotalCount()V
    .locals 4

    .prologue
    .line 634
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 635
    .local v1, "db1":LDatabase/DatabaseHandler;
    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getSwitchStatusCount()I

    move-result v0

    .line 636
    .local v0, "count":I
    iget-object v2, p0, LFragments/Home;->txtCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method private setTotalCountNew()V
    .locals 4

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "count":I
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 813
    .local v1, "db1":LDatabase/DatabaseHandler;
    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getSwitchStatusCount()I

    move-result v0

    .line 814
    iget-object v2, p0, LFragments/Home;->txtCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    return-void
.end method

.method private setViewPager()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, LFragments/Home;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 133
    iget-object v0, p0, LFragments/Home;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, LFragments/Home;->setupViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 135
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->tvInternetMsg:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Home;->txtM:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, LFragments/Home;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 138
    iget-object v0, p0, LFragments/Home;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, LFragments/Home;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 139
    return-void
.end method

.method private setupViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 234
    new-instance v0, LFragments/Home$ViewPagerAdapter;

    invoke-virtual {p0}, LFragments/Home;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LFragments/Home$ViewPagerAdapter;-><init>(LFragments/Home;Landroid/support/v4/app/FragmentManager;)V

    .line 235
    .local v0, "adapter":LFragments/Home$ViewPagerAdapter;
    new-instance v1, LFragments/Rooms;

    invoke-direct {v1}, LFragments/Rooms;-><init>()V

    const-string v2, "ROOMS"

    invoke-virtual {v0, v1, v2}, LFragments/Home$ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/view/View;

    .line 236
    new-instance v1, LFragments/ProfileFragment;

    invoke-direct {v1}, LFragments/ProfileFragment;-><init>()V

    const-string v2, "MOODS"

    invoke-virtual {v0, v1, v2}, LFragments/Home$ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/view/View;

    .line 237
    new-instance v1, LFragments/Activities;

    invoke-direct {v1}, LFragments/Activities;-><init>()V

    const-string v2, "UPDATES"

    invoke-virtual {v0, v1, v2}, LFragments/Home$ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/view/View;

    .line 239
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 241
    new-instance v1, LFragments/Home$1;

    invoke-direct {v1, p0}, LFragments/Home$1;-><init>(LFragments/Home;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 287
    return-void
.end method

.method private showBlastInHome(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringExtra"    # Ljava/lang/String;

    .prologue
    .line 666
    :try_start_0
    invoke-direct {p0, p1}, LFragments/Home;->createImageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private showFABMenu()V
    .locals 4

    .prologue
    const v3, 0x7f0700f0

    const/4 v1, 0x0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, LFragments/Home;->isFABOpen:Z

    .line 542
    iget-object v0, p0, LFragments/Home;->fabBGLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    :goto_0
    invoke-direct {p0}, LFragments/Home;->setShortcutMenu()V

    .line 554
    iget-object v0, p0, LFragments/Home;->fabLayoutArm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 555
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 557
    iget-object v0, p0, LFragments/Home;->fabLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 558
    iget-object v0, p0, LFragments/Home;->fabLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 559
    iget-object v0, p0, LFragments/Home;->fabLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 560
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, LFragments/Home;->fabLayoutLock:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x2

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 294
    :sswitch_0
    iget-boolean v3, p0, LFragments/Home;->isFABOpen:Z

    if-nez v3, :cond_1

    .line 295
    invoke-direct {p0}, LFragments/Home;->showFABMenu()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0}, LFragments/Home;->closeFABMenu()V

    goto :goto_0

    .line 304
    :sswitch_1
    invoke-direct {p0}, LFragments/Home;->closeFABMenu()V

    .line 305
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DemoUser"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 306
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v8, "3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 308
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getArmFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, LFragments/Home;->view:Landroid/view/View;

    const-string v8, "Your home is disarmed now"

    invoke-static {v3, v8, v11}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    .line 310
    .local v2, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, "sbView":Landroid/view/View;
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v8, 0x7f0b001b

    invoke-static {v3, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    .line 313
    new-instance v3, LFragments/Home$AsyncArmActivation;

    invoke-direct {v3, p0, v9}, LFragments/Home$AsyncArmActivation;-><init>(LFragments/Home;LFragments/Home$1;)V

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "0"

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, LFragments/Home$AsyncArmActivation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 315
    .end local v1    # "sbView":Landroid/view/View;
    .end local v2    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_2
    iget-object v3, p0, LFragments/Home;->view:Landroid/view/View;

    const-string v8, "Your home is armed now"

    invoke-static {v3, v8, v11}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    .line 316
    .restart local v2    # "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 317
    .restart local v1    # "sbView":Landroid/view/View;
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v8, 0x7f0b001b

    invoke-static {v3, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    .line 320
    new-instance v3, LFragments/Home$AsyncArmActivation;

    invoke-direct {v3, p0, v9}, LFragments/Home$AsyncArmActivation;-><init>(LFragments/Home;LFragments/Home$1;)V

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1"

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, LFragments/Home$AsyncArmActivation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 324
    .end local v1    # "sbView":Landroid/view/View;
    .end local v2    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_3
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060083

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 327
    :cond_4
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getArmFlag()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    new-instance v3, LFragments/Home$AsyncArmActivation;

    invoke-direct {v3, p0, v9}, LFragments/Home$AsyncArmActivation;-><init>(LFragments/Home;LFragments/Home$1;)V

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "0"

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, LFragments/Home$AsyncArmActivation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3, v10}, LSession/SessionManager;->setArmFlag(Z)V

    .line 334
    :goto_1
    invoke-direct {p0}, LFragments/Home;->setArmFunction()V

    goto/16 :goto_0

    .line 331
    :cond_5
    new-instance v3, LFragments/Home$AsyncArmActivation;

    invoke-direct {v3, p0, v9}, LFragments/Home$AsyncArmActivation;-><init>(LFragments/Home;LFragments/Home$1;)V

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1"

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, LFragments/Home$AsyncArmActivation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3, v12}, LSession/SessionManager;->setArmFlag(Z)V

    goto :goto_1

    .line 339
    :sswitch_2
    invoke-direct {p0}, LFragments/Home;->closeFABMenu()V

    .line 340
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DemoUser"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 341
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "You are demo user"

    invoke-static {v3, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 344
    :cond_6
    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v8, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 345
    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v3

    const-string v8, "null"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 346
    :cond_7
    invoke-direct {p0}, LFragments/Home;->AlertSetHomeLock()V

    goto/16 :goto_0

    .line 348
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v8, Lcom/iot/engine/SetPasscode;

    invoke-direct {v0, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "SwitchID"

    iget-object v8, p0, LFragments/Home;->session:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, LFragments/Home;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "Kindly connect to your Pongo pyramid, you cannot unlock your home via Internet"

    invoke-static {v3, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 360
    :sswitch_3
    invoke-direct {p0}, LFragments/Home;->closeFABMenu()V

    goto/16 :goto_0

    .line 365
    :sswitch_4
    iget-object v3, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v3}, LDatabase/DatabaseHandler;->getCameraListNew()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 369
    .local v4, "time":J
    iget-wide v8, p0, LFragments/Home;->startMillis:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_a

    iget-wide v8, p0, LFragments/Home;->startMillis:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x12c

    cmp-long v3, v8, v10

    if-lez v3, :cond_b

    .line 370
    :cond_a
    iput-wide v4, p0, LFragments/Home;->startMillis:J

    .line 371
    iput v12, p0, LFragments/Home;->count:I

    .line 376
    :goto_2
    iget v3, p0, LFragments/Home;->count:I

    if-ne v3, v13, :cond_0

    .line 377
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, LFragments/Home;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 373
    :cond_b
    iget v3, p0, LFragments/Home;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LFragments/Home;->count:I

    goto :goto_2

    .line 384
    .end local v4    # "time":J
    :sswitch_5
    iget-object v3, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v3}, LDatabase/DatabaseHandler;->getTvRemoteInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    iget-object v3, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v3}, LDatabase/DatabaseHandler;->getMusicRemoteInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    iget-object v3, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v3}, LDatabase/DatabaseHandler;->getAcRemoteInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 386
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 388
    .local v6, "time1":J
    iget-wide v8, p0, LFragments/Home;->startMillis:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_d

    iget-wide v8, p0, LFragments/Home;->startMillis:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x12c

    cmp-long v3, v8, v10

    if-lez v3, :cond_e

    .line 389
    :cond_d
    iput-wide v6, p0, LFragments/Home;->startMillis:J

    .line 390
    iput v12, p0, LFragments/Home;->count2:I

    .line 395
    :goto_3
    iget v3, p0, LFragments/Home;->count2:I

    if-ne v3, v13, :cond_0

    .line 396
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, LFragments/Home;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    :cond_e
    iget v3, p0, LFragments/Home;->count2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LFragments/Home;->count2:I

    goto :goto_3

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0177 -> :sswitch_3
        0x7f0d0178 -> :sswitch_1
        0x7f0d017b -> :sswitch_2
        0x7f0d0187 -> :sswitch_0
        0x7f0d0196 -> :sswitch_4
        0x7f0d0197 -> :sswitch_5
    .end sparse-switch
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
    const/4 v2, 0x0

    .line 107
    const v0, 0x7f040065

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    .line 109
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    .line 110
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Home;->session:LSession/SessionManager;

    .line 112
    invoke-direct {p0}, LFragments/Home;->initialaseControlOfFab()V

    .line 113
    invoke-direct {p0}, LFragments/Home;->setViewPager()V

    .line 114
    invoke-direct {p0}, LFragments/Home;->createTabIcons()V

    .line 117
    iget-object v0, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getNotificationCount()I

    move-result v0

    iput v0, p0, LFragments/Home;->count1:I

    .line 118
    iget-object v0, p0, LFragments/Home;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getSwitchStatusCount()I

    move-result v0

    iput v0, p0, LFragments/Home;->count3:I

    .line 120
    iget-object v0, p0, LFragments/Home;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 123
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ltyrantgit/explosionfield/ExplosionField;->attach2Window(Landroid/app/Activity;)Ltyrantgit/explosionfield/ExplosionField;

    move-result-object v0

    iput-object v0, p0, LFragments/Home;->mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

    .line 124
    invoke-direct {p0}, LFragments/Home;->generateCooridinate()V

    .line 126
    iget-object v0, p0, LFragments/Home;->view:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 640
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 641
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 642
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 616
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 617
    const-string v0, "Home Fragment-->"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 619
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refreshShortcut"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 620
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "INTERNET_TEST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 621
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Home;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BlastCallBack"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 623
    invoke-direct {p0}, LFragments/Home;->setTotalCount()V

    .line 624
    invoke-virtual {p0}, LFragments/Home;->setActivityCount()V

    .line 625
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;)V

    .line 627
    iget-object v0, p0, LFragments/Home;->txtRoom:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v0, p0, LFragments/Home;->txtProfile:Landroid/widget/TextView;

    const-string v1, "#A9A9A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, LFragments/Home;->txtActivity:Landroid/widget/TextView;

    const-string v1, "#A9A9A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    return-void
.end method

.method public setActivityCount()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 819
    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 820
    new-instance v2, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 821
    .local v2, "database":LDatabase/DatabaseHandler;
    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getUnReadNotificationMessage()I

    move-result v1

    .line 824
    .local v1, "countmsg":I
    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getSwitchStatusCount()I

    move-result v0

    .line 826
    .local v0, "count":I
    if-lez v1, :cond_1

    .line 827
    iget-object v3, p0, LFragments/Home;->tab_badge_activity:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    iget-object v3, p0, LFragments/Home;->tab_badge_activity:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    :goto_0
    if-lez v0, :cond_2

    .line 837
    iget-object v3, p0, LFragments/Home;->tab_badge_room:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v3, p0, LFragments/Home;->tab_badge_room:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    .end local v0    # "count":I
    .end local v1    # "countmsg":I
    .end local v2    # "database":LDatabase/DatabaseHandler;
    :cond_0
    :goto_1
    return-void

    .line 832
    .restart local v0    # "count":I
    .restart local v1    # "countmsg":I
    .restart local v2    # "database":LDatabase/DatabaseHandler;
    :cond_1
    iget-object v3, p0, LFragments/Home;->tab_badge_activity:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 842
    :cond_2
    iget-object v3, p0, LFragments/Home;->tab_badge_room:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
