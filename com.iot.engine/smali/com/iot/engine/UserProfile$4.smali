.class Lcom/iot/engine/UserProfile$4;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserProfile;->updateUserAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/UserProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/iot/engine/UserProfile$4;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/iot/engine/UserProfile$4;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0}, Lcom/iot/engine/UserProfile;->access$700(Lcom/iot/engine/UserProfile;)V

    .line 483
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 484
    iget-object v0, p0, Lcom/iot/engine/UserProfile$4;->this$0:Lcom/iot/engine/UserProfile;

    const-string v1, "try again!!!"

    invoke-static {v0, v1}, Lcom/iot/engine/UserProfile;->access$900(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V

    .line 486
    return-void
.end method
