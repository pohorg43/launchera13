.class public Lcom/oplus/launcher/overlay/RROverlayPackageNone;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/overlay/RROverlayPackageNone$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/launcher/overlay/RROverlayPackageNone$Companion;

.field private static final TAG:Ljava/lang/String; = "RROverlayPackageNone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mTargetPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageNone$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/overlay/RROverlayPackageNone$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->Companion:Lcom/oplus/launcher/overlay/RROverlayPackageNone$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDynamicEnabledState()V
    .registers 1

    return-void
.end method

.method public getDynamicOverlayPackage()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public final getMTargetPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->mTargetPackageName:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mTargetPackageName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->setMTargetPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public needDynamicOverlay()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needListenOverlayChanged()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needOverlay()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final onOverlayChanged()V
    .registers 2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "RROverlayPackageNone"

    const-string v0, "onOverlayChanged"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final setMTargetPackageName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->mTargetPackageName:Ljava/lang/String;

    return-void
.end method
