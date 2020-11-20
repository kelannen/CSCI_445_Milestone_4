.class public LFragments/ProfileScheduleListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProfileScheduleListFragment.java"

# interfaces
.implements LSession/IOnClickOfScheduleList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "ProfileScheduleListFrag"


# instance fields
.field private adapter:LAdapter/ProfileScheduleAdapter;

.field private db:LDatabase/DatabaseHandler;

.field private messageBroadcast:Landroid/content/BroadcastReceiver;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private session:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 240
    new-instance v0, LFragments/ProfileScheduleListFragment$4;

    invoke-direct {v0, p0}, LFragments/ProfileScheduleListFragment$4;-><init>(LFragments/ProfileScheduleListFragment;)V

    iput-object v0, p0, LFragments/ProfileScheduleListFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(LFragments/ProfileScheduleListFragment;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 53
    iget-object v0, p0, LFragments/ProfileScheduleListFragment;->session:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$100(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, LFragments/ProfileScheduleListFragment;->alertDialogDelete(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(LFragments/ProfileScheduleListFragment;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 53
    iget-object v0, p0, LFragments/ProfileScheduleListFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$302(LFragments/ProfileScheduleListFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 53
    iput-object p1, p0, LFragments/ProfileScheduleListFragment;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$400(LFragments/ProfileScheduleListFragment;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 53
    iget-object v0, p0, LFragments/ProfileScheduleListFragment;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$500(LFragments/ProfileScheduleListFragment;)V
    .locals 0
    .param p0, "x0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 53
    invoke-direct {p0}, LFragments/ProfileScheduleListFragment;->setAdpater()V

    return-void
.end method

.method private alertDialogDelete(Ljava/util/HashMap;)V
    .locals 6
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
    .line 127
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 129
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 131
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "txtDelete":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, "tvTitle":Landroid/widget/TextView;
    const-string v5, "Delete Profile Schedule"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v5, LFragments/ProfileScheduleListFragment$2;

    invoke-direct {v5, p0, p1, v0}, LFragments/ProfileScheduleListFragment$2;-><init>(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v5, LFragments/ProfileScheduleListFragment$3;

    invoke-direct {v5, p0, v0}, LFragments/ProfileScheduleListFragment$3;-><init>(LFragments/ProfileScheduleListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 155
    return-void
.end method

.method private findViewbyId(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    const v1, 0x7f0d020d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, LFragments/ProfileScheduleListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 76
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    return-void
.end method

.method private setAdpater()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getProfileSchedulerInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "arrayListSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 84
    new-instance v1, LAdapter/ProfileScheduleAdapter;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, LAdapter/ProfileScheduleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/IOnClickOfScheduleList;)V

    iput-object v1, p0, LFragments/ProfileScheduleListFragment;->adapter:LAdapter/ProfileScheduleAdapter;

    .line 85
    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, LFragments/ProfileScheduleListFragment;->adapter:LAdapter/ProfileScheduleAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->adapter:LAdapter/ProfileScheduleAdapter;

    invoke-virtual {v1}, LAdapter/ProfileScheduleAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 224
    const-string v0, "ProfileScheduleListFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, LFragments/ProfileScheduleListFragment;->setAdpater()V

    .line 226
    return-void
.end method

.method public onClickOfScheduleList(Ljava/util/HashMap;)V
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
    .line 93
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Edit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Delete"

    aput-object v3, v1, v2

    .line 94
    .local v1, "strArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, LFragments/ProfileScheduleListFragment$1;

    invoke-direct {v2, p0, p1}, LFragments/ProfileScheduleListFragment$1;-><init>(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 66
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/ProfileScheduleListFragment;->view:Landroid/view/View;

    .line 67
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/ProfileScheduleListFragment;->db:LDatabase/DatabaseHandler;

    .line 68
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/ProfileScheduleListFragment;->session:LSession/SessionManager;

    .line 69
    iget-object v0, p0, LFragments/ProfileScheduleListFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, LFragments/ProfileScheduleListFragment;->findViewbyId(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, LFragments/ProfileScheduleListFragment;->setAdpater()V

    .line 71
    iget-object v0, p0, LFragments/ProfileScheduleListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 237
    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 231
    invoke-virtual {p0}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/ProfileScheduleListFragment;->messageBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotifyScheduleList"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 232
    return-void
.end method
