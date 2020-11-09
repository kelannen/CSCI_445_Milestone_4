.class LFragments/ProfileScheduleListFragment$2;
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

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 140
    iput-object p1, p0, LFragments/ProfileScheduleListFragment$2;->this$0:LFragments/ProfileScheduleListFragment;

    iput-object p2, p0, LFragments/ProfileScheduleListFragment$2;->val$mMap:Ljava/util/HashMap;

    iput-object p3, p0, LFragments/ProfileScheduleListFragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    new-instance v0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;

    iget-object v1, p0, LFragments/ProfileScheduleListFragment$2;->this$0:LFragments/ProfileScheduleListFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;-><init>(LFragments/ProfileScheduleListFragment;LFragments/ProfileScheduleListFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, LFragments/ProfileScheduleListFragment$2;->val$mMap:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    iget-object v0, p0, LFragments/ProfileScheduleListFragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    return-void
.end method
