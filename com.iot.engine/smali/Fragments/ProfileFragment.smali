.class public LFragments/ProfileFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProfileFragment.java"

# interfaces
.implements LSession/IOnClickListner;
.implements LSession/IOnLongClickListener;
.implements LSession/OnCustomerListChangedListener;
.implements LSession/OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/ProfileFragment$AsyncTaskForEditProfile;,
        LFragments/ProfileFragment$AsyncTaskForDeleteProfile;,
        LFragments/ProfileFragment$AsyncTaskForAddProfile;,
        LFragments/ProfileFragment$AsyncModeActivationTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileFragment"


# instance fields
.field private adapter:LAdapter/ProfileAdapter;

.field private adapterMove:LAdapter/MoveProfileAdapter;

.field private db:LDatabase/DatabaseHandler;

.field private lstProfileMove:Landroid/support/v7/widget/RecyclerView;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private message:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private recycler_profile:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 668
    new-instance v0, LFragments/ProfileFragment$8;

    invoke-direct {v0, p0}, LFragments/ProfileFragment$8;-><init>(LFragments/ProfileFragment;)V

    iput-object v0, p0, LFragments/ProfileFragment;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(LFragments/ProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileFragment;

    .prologue
    .line 65
    iget-object v0, p0, LFragments/ProfileFragment;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(LFragments/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, LFragments/ProfileFragment;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileFragment;

    .prologue
    .line 65
    iget-object v0, p0, LFragments/ProfileFragment;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$200(LFragments/ProfileFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 65
    invoke-direct {p0, p1}, LFragments/ProfileFragment;->renameModeName(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(LFragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;

    .prologue
    .line 65
    invoke-direct {p0}, LFragments/ProfileFragment;->setMoveAdapter()V

    return-void
.end method

.method static synthetic access$400(LFragments/ProfileFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 65
    invoke-direct {p0, p1}, LFragments/ProfileFragment;->alertDialogDelete(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(LFragments/ProfileFragment;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileFragment;

    .prologue
    .line 65
    iget-object v0, p0, LFragments/ProfileFragment;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$600(LFragments/ProfileFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 65
    invoke-direct {p0, p1}, LFragments/ProfileFragment;->createScheduleForProfile(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$700(LFragments/ProfileFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 65
    invoke-direct {p0, p1}, LFragments/ProfileFragment;->editSelectedSwitchList(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileFragment;

    .prologue
    .line 65
    iget-object v0, p0, LFragments/ProfileFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$902(LFragments/ProfileFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # LFragments/ProfileFragment;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 65
    iput-object p1, p0, LFragments/ProfileFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method private addOrRemoveShorcut(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 5
    .param p2, "shorcut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, LFragments/ProfileFragment;->db:LDatabase/DatabaseHandler;

    const-string v1, "Add to Shortcut"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, p1, v1}, LDatabase/DatabaseHandler;->updateModeShorcutFlag(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 328
    invoke-virtual {p0}, LFragments/ProfileFragment;->setAdapter()V

    .line 329
    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "refreshShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "KEY"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 331
    return-void

    .line 326
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private alertDialogDelete(Ljava/util/HashMap;)V
    .locals 7
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
    .line 349
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 351
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 352
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 353
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 354
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 355
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 356
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 358
    .local v4, "txtOK":Landroid/widget/TextView;
    const-string v5, "Delete Profile"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    new-instance v5, LFragments/ProfileFragment$6;

    invoke-direct {v5, p0, v0, p1}, LFragments/ProfileFragment$6;-><init>(LFragments/ProfileFragment;Landroid/app/Dialog;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v5, LFragments/ProfileFragment$7;

    invoke-direct {v5, p0, v0}, LFragments/ProfileFragment$7;-><init>(LFragments/ProfileFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 378
    return-void
.end method

.method private alertDialogShowMessage(Ljava/util/HashMap;)V
    .locals 7
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
    .line 288
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 290
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 291
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 293
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 294
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 296
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 298
    .local v4, "txtDelete":Landroid/widget/TextView;
    const-string v5, "Select Switch"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v5, LFragments/ProfileFragment$4;

    invoke-direct {v5, p0, v0, p1}, LFragments/ProfileFragment$4;-><init>(LFragments/ProfileFragment;Landroid/app/Dialog;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v5, LFragments/ProfileFragment$5;

    invoke-direct {v5, p0, v0}, LFragments/ProfileFragment$5;-><init>(LFragments/ProfileFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 321
    return-void
.end method

.method private createScheduleForProfile(Ljava/util/HashMap;)V
    .locals 3
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
    .line 279
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "on_mode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "on_mode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    invoke-direct {p0, p1}, LFragments/ProfileFragment;->alertDialogShowMessage(Ljava/util/HashMap;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/ScheduleProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ProfileData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, LFragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private editSelectedSwitchList(Ljava/util/HashMap;)V
    .locals 3
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
    .line 334
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, "intentON":Landroid/content/Intent;
    const-string v1, "ACTION"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v2, "ID"

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "EDIT"

    const-string v1, "on_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v2, "off_mode"

    const-string v1, "off_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v2, "Mode_Name"

    const-string v1, "Mode_Name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, LFragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void
.end method

.method private renameModeName(Ljava/util/HashMap;)V
    .locals 1
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
    .line 344
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Mode_Name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, LFragments/ProfileFragment;->showFolderNameDialog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 345
    return-void
.end method

.method private setMoveAdapter()V
    .locals 7

    .prologue
    .line 263
    iget-object v0, p0, LFragments/ProfileFragment;->recycler_profile:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 267
    iget-object v0, p0, LFragments/ProfileFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getAllModeInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 268
    .local v2, "arrListProfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, LAdapter/MoveProfileAdapter;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LAdapter/MoveProfileAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;LFragments/ProfileFragment;)V

    iput-object v0, p0, LFragments/ProfileFragment;->adapterMove:LAdapter/MoveProfileAdapter;

    .line 269
    new-instance v6, LSession/SimpleItemTouchHelperCallback;

    iget-object v0, p0, LFragments/ProfileFragment;->adapterMove:LAdapter/MoveProfileAdapter;

    invoke-direct {v6, v0}, LSession/SimpleItemTouchHelperCallback;-><init>(LSession/ItemTouchHelperAdapter;)V

    .line 270
    .local v6, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, LFragments/ProfileFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 271
    iget-object v0, p0, LFragments/ProfileFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 272
    iget-object v0, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, LFragments/ProfileFragment;->adapterMove:LAdapter/MoveProfileAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 273
    iget-object v0, p0, LFragments/ProfileFragment;->adapterMove:LAdapter/MoveProfileAdapter;

    invoke-virtual {v0}, LAdapter/MoveProfileAdapter;->notifyDataSetChanged()V

    .line 275
    return-void
.end method

.method private showFolderNameDialog(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "opt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 132
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 134
    .local v5, "dialogDeviceID":Landroid/app/Dialog;
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 135
    const v0, 0x7f04003b

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 136
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0800ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 138
    const v0, 0x7f0d00a5

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 139
    .local v11, "txtOk":Landroid/widget/TextView;
    const v0, 0x7f0d0103

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 140
    .local v9, "tvTitle":Landroid/widget/TextView;
    const v0, 0x7f0d0104

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 141
    .local v2, "etName":Landroid/widget/EditText;
    const v0, 0x7f0d00d7

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 142
    .local v10, "txtCancel":Landroid/widget/TextView;
    const v0, 0x7f0d0106

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 143
    .local v3, "rbTurnOn":Landroid/widget/RadioButton;
    const v0, 0x7f0d0107

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 147
    .local v4, "rbTurnOff":Landroid/widget/RadioButton;
    const-string v0, "NEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "Create"

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string v0, "Create Profile"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    new-instance v0, LFragments/ProfileFragment$1;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LFragments/ProfileFragment$1;-><init>(LFragments/ProfileFragment;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/app/Dialog;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v0, LFragments/ProfileFragment$2;

    invoke-direct {v0, p0, v5}, LFragments/ProfileFragment$2;-><init>(LFragments/ProfileFragment;Landroid/app/Dialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 209
    return-void

    .line 153
    :cond_0
    const-string v0, "Edit Profile"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :try_start_0
    const-string v0, "off_mode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v0, "Update"

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public OnLongClickListener(Ljava/util/HashMap;)V
    .locals 4
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
    .line 223
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Edit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Move"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Delete"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Schedule"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Select Switch"

    aput-object v3, v1, v2

    .line 225
    .local v1, "strArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, LFragments/ProfileFragment$3;

    invoke-direct {v2, p0, p1}, LFragments/ProfileFragment$3;-><init>(LFragments/ProfileFragment;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 259
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 471
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 473
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 475
    invoke-virtual {p0}, LFragments/ProfileFragment;->setAdapter()V

    .line 477
    :cond_0
    return-void
.end method

.method public onClickListner(Ljava/util/HashMap;)V
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
    .line 112
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Mode_Name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Add New Mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "NEW"

    invoke-direct {p0, v1, p1}, LFragments/ProfileFragment;->showFolderNameDialog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v1, "on_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "on_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intentON":Landroid/content/Intent;
    const-string v1, "ACTION"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "ID"

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "Mode_Name"

    const-string v1, "Mode_Name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "off_mode"

    const-string v1, "off_mode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, LFragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 125
    .end local v0    # "intentON":Landroid/content/Intent;
    :cond_2
    new-instance v2, LFragments/ProfileFragment$AsyncModeActivationTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LFragments/ProfileFragment$AsyncModeActivationTask;-><init>(LFragments/ProfileFragment;LFragments/ProfileFragment$1;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, LFragments/ProfileFragment$AsyncModeActivationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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
    .line 82
    const v1, 0x7f04008c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LFragments/ProfileFragment;->rootView:Landroid/view/View;

    .line 83
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LFragments/ProfileFragment;->db:LDatabase/DatabaseHandler;

    .line 85
    iget-object v1, p0, LFragments/ProfileFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0d0207

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, LFragments/ProfileFragment;->recycler_profile:Landroid/support/v7/widget/RecyclerView;

    .line 86
    iget-object v1, p0, LFragments/ProfileFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0d0208

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    .line 87
    new-instance v1, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LFragments/ProfileFragment;->sessionManager:LSession/SessionManager;

    .line 88
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, LFragments/ProfileFragment;->recycler_profile:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    invoke-virtual {p0}, LFragments/ProfileFragment;->setAdapter()V

    .line 92
    iget-object v1, p0, LFragments/ProfileFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onNoteListChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "maps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 665
    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/ProfileFragment;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 666
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 658
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 659
    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/ProfileFragment;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ProfileNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 660
    return-void
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 387
    iget-object v0, p0, LFragments/ProfileFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 388
    return-void
.end method

.method public setAdapter()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, LFragments/ProfileFragment;->recycler_profile:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, LFragments/ProfileFragment;->lstProfileMove:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "arrListProfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, LFragments/ProfileFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getAllModeInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v1, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Mode_Name"

    const-string v3, "Add New Mode"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "isSelected"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v2, LAdapter/ProfileAdapter;

    invoke-virtual {p0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, LAdapter/ProfileAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LFragments/ProfileFragment;)V

    iput-object v2, p0, LFragments/ProfileFragment;->adapter:LAdapter/ProfileAdapter;

    .line 106
    iget-object v2, p0, LFragments/ProfileFragment;->recycler_profile:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, LFragments/ProfileFragment;->adapter:LAdapter/ProfileAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    return-void
.end method
