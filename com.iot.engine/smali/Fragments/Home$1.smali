.class LFragments/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Home;->setupViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Home;


# direct methods
.method constructor <init>(LFragments/Home;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Home;

    .prologue
    .line 241
    iput-object p1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 284
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 252
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->setActivityCount()V

    .line 254
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$000(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$100(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$200(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 262
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "database":LDatabase/DatabaseHandler;
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->updateNotificationFlag()V

    .line 264
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->setActivityCount()V

    .line 266
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-virtual {v3}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/iot/engine/ActivityService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$000(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$200(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$100(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    .end local v0    # "database":LDatabase/DatabaseHandler;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 275
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$200(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$100(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#A9A9A9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v1, p0, LFragments/Home$1;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$000(LFragments/Home;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    :cond_2
    return-void
.end method
