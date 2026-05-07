.class public Lcom/android/launcher/download/InstallState;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALL_TYPE_MASK:I = 0x3c000

.field private static final NEW_INSTALLING_OR_UPDATING_APP:I = 0xc000

.field private static final NEW_INSTALLING_OR_UPDATING_EXPANSIONS:I = 0x30000

.field public static final STATE_DOWNLOADING:I = 0x0

.field public static final STATE_ILLEGAL:I = -0x80000000

.field public static final STATE_INSTALLED:I = -0x1

.field public static final STATE_INSTALLING:I = 0x4

.field public static final STATE_INSTALL_FAILED:I = 0xc8

.field public static final STATE_MERGE_PACKAGE:I = 0x64

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PENDING:I = 0x1

.field public static final STATE_RESERVED:I = 0x5

.field public static final TYPE_NEW_INSTALLING:I = 0x4000

.field public static final TYPE_OPLUS_EXPANSIONS_NEW_INSTALLING:I = 0x10000

.field public static final TYPE_OPLUS_EXPANSIONS_UPGRADING:I = 0x20000

.field public static final TYPE_UPGRADING:I = 0x8000


# instance fields
.field private transient mStartup:Z

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    iput p1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    return-void
.end method

.method public static isDownloadingState(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isPausedState(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private shouldResetStartup()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isIllegalState()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    :cond_12
    check-cast p1, Lcom/android/launcher/download/InstallState;

    iget v2, p0, Lcom/android/launcher/download/InstallState;->mState:I

    iget v3, p1, Lcom/android/launcher/download/InstallState;->mState:I

    if-ne v2, v3, :cond_21

    iget-boolean p0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    iget-boolean p1, p1, Lcom/android/launcher/download/InstallState;->mStartup:Z

    if-ne p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public getInstallState()I
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const v0, -0x3c001

    and-int/2addr p0, v0

    return p0
.end method

.method public getType()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isIllegalState()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const v0, 0x3c000

    and-int/2addr p0, v0

    return p0

    :cond_14
    :goto_14
    const/4 p0, -0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDownloadingState()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isFromOplusAppStore()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isInstallingOrUpgradingApp()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isIllegalState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isInstallFailedState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isInstalled()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInstallingOrUpgradingApp()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const v0, 0xc000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isInstallingState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isMergePackageState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isNewInstallingExpansionsType()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isNewInstallingType()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isNonInstalled()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isOplusExpansionsType()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/high16 v0, 0x30000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPausedState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isPendingState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isReservedState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isStartup()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    return p0
.end method

.method public isStillInDownloading()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isPendingState()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isMergePackageState()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isReservedState()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isPausedState()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isUpgradingExpansionsType()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isUpgradingType()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public markInstalled()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/download/InstallState;->reset(I)V

    return-void
.end method

.method public reset(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/download/InstallState;->shouldResetStartup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    iput p1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    return-void
.end method

.method public setInstallState(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    goto :goto_16

    :cond_7
    iget v0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const v1, 0x3c000

    and-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher/download/InstallState;->shouldResetStartup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    :goto_16
    return-void
.end method

.method public setStartup(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/download/InstallState;->mStartup:Z

    return-void
.end method

.method public setType(I)V
    .registers 4

    const v0, 0x3c000

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNonInstalled()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isIllegalState()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    const v1, -0x3c001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher/download/InstallState;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "InstallState{value=%d,installState=%d,type=%d,startup=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/download/InstallState;->mState:I

    return p0
.end method
