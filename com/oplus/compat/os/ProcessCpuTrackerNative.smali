.class public Lcom/oplus/compat/os/ProcessCpuTrackerNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessCpuTrackerNative"


# instance fields
.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mProcessCpuTrackerWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    goto :goto_39

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;

    invoke-direct {v0, p1}, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    goto :goto_39

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->getProcessCpuTrackerWrapper(Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    goto :goto_39

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    :goto_39
    return-void

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getProcessCpuTrackerWrapper(Z)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static updateCompat(Ljava/lang/Object;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    goto :goto_31

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;->update()V

    goto :goto_31

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->updateCompat(Ljava/lang/Object;)V

    goto :goto_31

    :cond_26
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    :goto_31
    return-void

    :cond_32
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "Not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
