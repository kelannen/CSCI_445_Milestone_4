.class LAdapter/DeviceListAdapter$2;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/DeviceListAdapter;->onBindViewHolder(LAdapter/DeviceListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/DeviceListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/DeviceListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/DeviceListAdapter;

    .prologue
    .line 64
    iput-object p1, p0, LAdapter/DeviceListAdapter$2;->this$0:LAdapter/DeviceListAdapter;

    iput p2, p0, LAdapter/DeviceListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, LAdapter/DeviceListAdapter$AsyncSocketWrite;

    iget-object v1, p0, LAdapter/DeviceListAdapter$2;->this$0:LAdapter/DeviceListAdapter;

    invoke-direct {v0, v1}, LAdapter/DeviceListAdapter$AsyncSocketWrite;-><init>(LAdapter/DeviceListAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, LAdapter/DeviceListAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LAdapter/DeviceListAdapter$AsyncSocketWrite;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
