.class public final Lcom/google/android/gms/internal/zzqq;
.super Lcom/google/android/gms/common/api/OptionalPendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/OptionalPendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final vu:Lcom/google/android/gms/internal/zzpo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpo",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/OptionalPendingResult;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzpo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OptionalPendingResult can only wrap PendingResults generated by an API call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzpo;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpo;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzpo;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpo;->cancel()V

    return-void
.end method

.method public get()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqq;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzqq;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not available. Check that isDone() returns true before calling get()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpo;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpo;->isReady()Z

    move-result v0

    return v0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpo;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpo;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpo;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpo;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-void
.end method

.method public zzaoj()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq;->vu:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpo;->zzaoj()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
