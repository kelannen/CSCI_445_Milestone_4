.class LFragments/ProfileFragment$2;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileFragment;->showFolderNameDialog(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileFragment;

.field final synthetic val$dialogDeviceID:Landroid/app/Dialog;


# direct methods
.method constructor <init>(LFragments/ProfileFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileFragment;

    .prologue
    .line 201
    iput-object p1, p0, LFragments/ProfileFragment$2;->this$0:LFragments/ProfileFragment;

    iput-object p2, p0, LFragments/ProfileFragment$2;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, LFragments/ProfileFragment$2;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 205
    return-void
.end method
