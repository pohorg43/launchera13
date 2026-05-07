.class public final Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen;
.super Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen$Companion;

.field private static final OVERLAY_FOLD_SCREEN_OLD:Ljava/lang/String; = "com.oplus.android.launcher.overlay.foldscreen.old"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RROverlayPackageFoldScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen;->Companion:Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicOverlayPackage()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oplus.android.launcher.overlay.foldscreen.old"

    return-object p0
.end method

.method public needDynamicOverlay()Z
    .registers 2

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
