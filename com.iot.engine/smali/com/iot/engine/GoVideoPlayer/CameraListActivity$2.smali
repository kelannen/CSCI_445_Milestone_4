.class Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;
.super Ljava/lang/Object;
.source "CameraListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->alertDialogDelete(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Landroid/app/Dialog;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    new-instance v1, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$2;->val$mMap:Ljava/util/HashMap;

    const-string v4, "camera_id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method
