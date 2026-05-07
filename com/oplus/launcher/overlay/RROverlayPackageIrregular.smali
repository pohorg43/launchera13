.class public Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;
.super Lcom/oplus/launcher/overlay/RROverlayPackageNone;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/overlay/RROverlayPackageIrregular$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/launcher/overlay/RROverlayPackageIrregular$Companion;

.field private static final TAG:Ljava/lang/String; = "RROverlayPackageIrregular"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;->Companion:Lcom/oplus/launcher/overlay/RROverlayPackageIrregular$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDynamicEnabledState()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->needDynamicOverlay()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->getDynamicOverlayPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isUsingOldLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RROverlayPackageIrregular"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->setEnableSafely(Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;->checkDynamicEnabledState()V

    return-void
.end method

.method public needOverlay()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
