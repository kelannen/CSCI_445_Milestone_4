.class Lcom/google/android/gms/internal/zzvs$zzc$1;
.super Lcom/google/android/gms/internal/zzvs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvs$zzc;->zza(Lcom/google/android/gms/internal/zzvr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic atK:Lcom/google/android/gms/internal/zzvs$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvs$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvs$zzc$1;->atK:Lcom/google/android/gms/internal/zzvs$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzvs$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs$zzc$1;->atK:Lcom/google/android/gms/internal/zzvs$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvs$zzc;->zza(Lcom/google/android/gms/internal/zzvs$zzc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs$zzc$1;->atK:Lcom/google/android/gms/internal/zzvs$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzvs$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzvs$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzvs$zzc;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
