.class public Lcom/iot/engine/UserAccountActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LSession/IOnClickListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserAccountActivity"


# instance fields
.field private adapter:LAdapter/UserAccountAdapter;

.field private imgBack:Landroid/widget/ImageView;

.field private recycler_account:Landroid/support/v7/widget/RecyclerView;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/UserAccountActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserAccountActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/UserAccountActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/UserAccountActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserAccountActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iot/engine/UserAccountActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 62
    const v1, 0x7f0d0268

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/UserAccountActivity;->recycler_account:Landroid/support/v7/widget/RecyclerView;

    .line 63
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/UserAccountActivity;->recycler_account:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/UserAccountActivity;->txtHeading:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/UserAccountActivity;->imgBack:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/iot/engine/UserAccountActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "arrListProfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ACCOUNT_NAME"

    const-string v3, "Add New Account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, LAdapter/UserAccountAdapter;

    invoke-direct {v2, p0, v0, p0}, LAdapter/UserAccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iot/engine/UserAccountActivity;)V

    iput-object v2, p0, Lcom/iot/engine/UserAccountActivity;->adapter:LAdapter/UserAccountAdapter;

    .line 79
    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity;->recycler_account:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/iot/engine/UserAccountActivity;->adapter:LAdapter/UserAccountAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    return-void
.end method

.method private showLoginDialog()V
    .locals 5

    .prologue
    .line 106
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "dialogDeviceID":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 109
    const v4, 0x7f040073

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 110
    const v4, 0x7f0d01a9

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 111
    .local v3, "edtUsername":Landroid/widget/EditText;
    const v4, 0x7f0d00d6

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 113
    .local v2, "edtPassword":Landroid/widget/EditText;
    const v4, 0x7f0d0149

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 116
    .local v0, "btnLogin":Landroid/widget/Button;
    new-instance v4, Lcom/iot/engine/UserAccountActivity$1;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/iot/engine/UserAccountActivity$1;-><init>(Lcom/iot/engine/UserAccountActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/UserAccountActivity;->finish()V

    goto :goto_0

    .line 86
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
    .line 96
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Add New Account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/iot/engine/UserAccountActivity;->showLoginDialog()V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0400ba

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserAccountActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/iot/engine/UserAccountActivity;->initControl()V

    .line 57
    invoke-direct {p0}, Lcom/iot/engine/UserAccountActivity;->setAdapter()V

    .line 59
    return-void
.end method
