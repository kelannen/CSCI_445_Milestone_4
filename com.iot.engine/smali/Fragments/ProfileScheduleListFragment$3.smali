.class LFragments/ProfileScheduleListFragment$3;
.super Ljava/lang/Object;
.source "ProfileScheduleListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileScheduleListFragment;->alertDialogDelete(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileScheduleListFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(LFragments/ProfileScheduleListFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 148
    iput-object p1, p0, LFragments/ProfileScheduleListFragment$3;->this$0:LFragments/ProfileScheduleListFragment;

    iput-object p2, p0, LFragments/ProfileScheduleListFragment$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, LFragments/ProfileScheduleListFragment$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    return-void
.end method
