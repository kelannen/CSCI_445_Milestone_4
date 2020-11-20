.class Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;
.super Ljava/lang/Object;
.source "AdapterCameraList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->onBindViewHolder(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

.field final synthetic val$cameraName:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->val$cameraName:Ljava/lang/String;

    iput p3, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->val$cameraName:Ljava/lang/String;

    const-string v1, "@DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v1, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->thisInstance:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v0, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->OnLongClickListener(Ljava/util/HashMap;)V

    .line 89
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
