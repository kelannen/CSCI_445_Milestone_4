.class Lcom/iot/engine/MainActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/MainActivity;->setDrawerToggleEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6
    .param p1, "this$0"    # Lcom/iot/engine/MainActivity;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "arg2"    # Landroid/support/v7/widget/Toolbar;
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 354
    iput-object p1, p0, Lcom/iot/engine/MainActivity$1;->this$0:Lcom/iot/engine/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/iot/engine/MainActivity$1;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$100(Lcom/iot/engine/MainActivity;)V

    .line 360
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/iot/engine/MainActivity$1;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$200(Lcom/iot/engine/MainActivity;)V

    .line 366
    iget-object v0, p0, Lcom/iot/engine/MainActivity$1;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$300(Lcom/iot/engine/MainActivity;)V

    .line 367
    return-void
.end method
