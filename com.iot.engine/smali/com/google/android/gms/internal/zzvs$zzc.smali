.class Lcom/google/android/gms/internal/zzvs$zzc;
.super Lcom/google/android/gms/internal/zzpm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpm$zza",
        "<",
        "Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;",
        "Lcom/google/android/gms/internal/zzvr;",
        ">;"
    }
.end annotation


# instance fields
.field private final atG:Ljava/lang/String;

.field private final atH:Z

.field private final atJ:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/search/SearchAuth;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpm$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const-string v0, "SearchAuth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atH:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atJ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atG:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzvs$zzc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atH:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzvr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvs$zzc;->zza(Lcom/google/android/gms/internal/zzvr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzvr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atH:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzvs$zzc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzvs$zzc$1;-><init>(Lcom/google/android/gms/internal/zzvs$zzc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvr;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzvq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atG:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzvq;->zza(Lcom/google/android/gms/internal/zzvp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvs$zzc;->zzdz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzdz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvs$zzc;->atH:Z

    if-eqz v0, :cond_0

    const-string v1, "SearchAuth"

    const-string v2, "GetGoogleNowAuthImpl received failure: "

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzvs$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzvs$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
