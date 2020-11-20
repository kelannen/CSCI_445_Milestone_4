.class public LAdapter/ShareControlAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShareControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/ShareControlAdapter$AsyncDeleteShareControl;,
        LAdapter/ShareControlAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/ShareControlAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareControlAdapter"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field listner:LSession/IOnClickListner;

.field session:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field userType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iot/engine/ShareControlUserList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/iot/engine/ShareControlUserList;
    .param p3, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iot/engine/ShareControlUserList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput-object p1, p0, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, LAdapter/ShareControlAdapter;->listner:LSession/IOnClickListner;

    .line 54
    iput-object p3, p0, LAdapter/ShareControlAdapter;->userType:Ljava/lang/String;

    .line 55
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/ShareControlAdapter;->session:LSession/SessionManager;

    .line 57
    return-void
.end method

.method static synthetic access$000(LAdapter/ShareControlAdapter;Ljava/util/HashMap;I)V
    .locals 0
    .param p0, "x0"    # LAdapter/ShareControlAdapter;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, LAdapter/ShareControlAdapter;->alertDialogDelete(Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic access$100(LAdapter/ShareControlAdapter;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # LAdapter/ShareControlAdapter;

    .prologue
    .line 39
    iget-object v0, p0, LAdapter/ShareControlAdapter;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(LAdapter/ShareControlAdapter;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # LAdapter/ShareControlAdapter;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 39
    iput-object p1, p0, LAdapter/ShareControlAdapter;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method private alertDialogDelete(Ljava/util/HashMap;I)V
    .locals 7
    .param p2, "mPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    iget-object v5, p0, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 190
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 191
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 192
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 197
    .local v4, "txtOK":Landroid/widget/TextView;
    const-string v5, "Delete User Account"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v5, LAdapter/ShareControlAdapter$3;

    invoke-direct {v5, p0, v0, p2, p1}, LAdapter/ShareControlAdapter$3;-><init>(LAdapter/ShareControlAdapter;Landroid/app/Dialog;ILjava/util/HashMap;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v5, LAdapter/ShareControlAdapter$4;

    invoke-direct {v5, p0, v0}, LAdapter/ShareControlAdapter$4;-><init>(LAdapter/ShareControlAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 216
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(LAdapter/ShareControlAdapter$MyViewHolder;I)V
    .locals 6
    .param p1, "holder"    # LAdapter/ShareControlAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 70
    iget-object v1, p1, LAdapter/ShareControlAdapter$MyViewHolder;->username:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "userName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p1, LAdapter/ShareControlAdapter$MyViewHolder;->usertype:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "userType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgEditSharedC:Landroid/widget/ImageView;

    new-instance v1, LAdapter/ShareControlAdapter$1;

    invoke-direct {v1, p0, p2}, LAdapter/ShareControlAdapter$1;-><init>(LAdapter/ShareControlAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgDelete:Landroid/widget/ImageView;

    new-instance v1, LAdapter/ShareControlAdapter$2;

    invoke-direct {v1, p0, p2}, LAdapter/ShareControlAdapter$2;-><init>(LAdapter/ShareControlAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, LAdapter/ShareControlAdapter;->userType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, LAdapter/ShareControlAdapter;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgEditSharedC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_1
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f020175

    .line 78
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    new-array v2, v5, [Lcom/squareup/picasso/NetworkPolicy;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, LAdapter/ShareControlAdapter$MyViewHolder;->profile_image:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 80
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 117
    :cond_1
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgEditSharedC:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgEditSharedC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p1, LAdapter/ShareControlAdapter$MyViewHolder;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, LAdapter/ShareControlAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/ShareControlAdapter;->onBindViewHolder(LAdapter/ShareControlAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ShareControlAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a9

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/ShareControlAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/ShareControlAdapter$MyViewHolder;-><init>(LAdapter/ShareControlAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, LAdapter/ShareControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ShareControlAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
