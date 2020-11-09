.class LAdapter/SchedularAdapter$3;
.super Ljava/lang/Object;
.source "SchedularAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SchedularAdapter;->alertDialogDelete(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SchedularAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mMap:Ljava/util/HashMap;

.field final synthetic val$mPosition:I


# direct methods
.method constructor <init>(LAdapter/SchedularAdapter;ILjava/util/HashMap;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SchedularAdapter;

    .prologue
    .line 201
    iput-object p1, p0, LAdapter/SchedularAdapter$3;->this$0:LAdapter/SchedularAdapter;

    iput p2, p0, LAdapter/SchedularAdapter$3;->val$mPosition:I

    iput-object p3, p0, LAdapter/SchedularAdapter$3;->val$mMap:Ljava/util/HashMap;

    iput-object p4, p0, LAdapter/SchedularAdapter$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    new-instance v0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;

    iget-object v1, p0, LAdapter/SchedularAdapter$3;->this$0:LAdapter/SchedularAdapter;

    iget v2, p0, LAdapter/SchedularAdapter$3;->val$mPosition:I

    invoke-direct {v0, v1, v2}, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;-><init>(LAdapter/SchedularAdapter;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, LAdapter/SchedularAdapter$3;->val$mMap:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    iget-object v0, p0, LAdapter/SchedularAdapter$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    return-void
.end method
