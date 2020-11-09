.class Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    iget-boolean v0, v0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->iFirstSelection:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$002(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    if-nez p3, :cond_0

    .line 132
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->iFirstSelection:Z

    .line 138
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
