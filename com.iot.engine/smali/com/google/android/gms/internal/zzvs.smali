.class public Lcom/google/android/gms/internal/zzvs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/search/SearchAuthApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvs$zza;,
        Lcom/google/android/gms/internal/zzvs$zzb;,
        Lcom/google/android/gms/internal/zzvs$zzd;,
        Lcom/google/android/gms/internal/zzvs$zzc;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearToken(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzvs$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzvs$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleNowAuth(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzvs$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzvs$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method
