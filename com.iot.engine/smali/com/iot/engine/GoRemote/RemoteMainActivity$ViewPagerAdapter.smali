.class public Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RemoteMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/RemoteMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;


# direct methods
.method public constructor <init>(Lcom/iot/engine/GoRemote/RemoteMainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/RemoteMainActivity;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    .line 434
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 435
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
