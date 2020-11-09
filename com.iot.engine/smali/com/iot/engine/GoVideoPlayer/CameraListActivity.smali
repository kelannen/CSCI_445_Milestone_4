.class public Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CameraListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LSession/IOnClickListner;
.implements LSession/IOnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;,
        Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraListActivity"


# instance fields
.field private db:LDatabase/DatabaseHandler;

.field private finalShorcut:Ljava/lang/String;

.field private imgBack:Landroid/widget/ImageView;

.field private mAdapter:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->alertDialogDelete(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->finalShorcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->addOrRemoveShorcut(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->setAdapter()V

    return-void
.end method

.method private addOrRemoveShorcut(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
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
    .line 176
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->db:LDatabase/DatabaseHandler;

    const-string v1, "Add to Shortcut"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, p1, v1}, LDatabase/DatabaseHandler;->updateCameraShorcutFlag(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "message":Ljava/lang/String;
    const-string v1, "Add to Shortcut"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->sessionManager:LSession/SessionManager;

    const-string v1, "camera_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, LSession/SessionManager;->saveCameraIdWithShortcutFlag(Ljava/lang/String;)V

    .line 186
    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->setAdapter()V

    .line 188
    return-void

    .line 176
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 184
    .restart local v0    # "message":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->sessionManager:LSession/SessionManager;

    const-string v2, ""

    invoke-virtual {v1, v2}, LSession/SessionManager;->saveCameraIdWithShortcutFlag(Ljava/lang/String;)V

    goto :goto_1
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
    .line 194
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 196
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 197
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 198
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 199
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 200
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 203
    .local v4, "txtOK":Landroid/widget/TextView;
    const-string v5, "Delete Camera"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v5, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Landroid/app/Dialog;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v5, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 225
    return-void
.end method

.method private initiControl()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->imgBack:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->txtHeading:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 79
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 80
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Pongo Cam"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getCameraListNew()Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    .local v0, "cameraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "camera_name"

    const-string v3, "@DD"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    invoke-direct {v2, p0, v0}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mAdapter:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    .line 103
    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->mAdapter:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    return-void
.end method


# virtual methods
.method public OnLongClickListener(Ljava/util/HashMap;)V
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
    .line 128
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "camera_shortcut"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v0, "Add to Shortcut"

    .line 134
    .local v0, "CameraShorcut":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->finalShorcut:Ljava/lang/String;

    .line 136
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Edit"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Delete"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->finalShorcut:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 137
    .local v2, "strArray":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v3, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 173
    return-void

    .line 132
    .end local v0    # "CameraShorcut":Ljava/lang/String;
    .end local v1    # "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "strArray":[Ljava/lang/CharSequence;
    :cond_0
    const-string v0, "Remove to Shortcut"

    .restart local v0    # "CameraShorcut":Ljava/lang/String;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 111
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
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
    .line 121
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CameraInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->setContentView(I)V

    .line 64
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->db:LDatabase/DatabaseHandler;

    .line 65
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->sessionManager:LSession/SessionManager;

    .line 66
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->initiControl()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 89
    new-instance v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->setAdapter()V

    .line 91
    return-void
.end method
