.class public final Lcom/oplus/launcher/overlay/RROverlayPackageTablet;
.super Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/overlay/RROverlayPackageTablet$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/launcher/overlay/RROverlayPackageTablet$Companion;

.field private static final OVERLAY_TABLET:Ljava/lang/String; = "com.oplus.android.launcher.overlay.tablet"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageTablet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/overlay/RROverlayPackageTablet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayPackageTablet;->Companion:Lcom/oplus/launcher/overlay/RROverlayPackageTablet$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageIrregular;-><init>()V

    return-void
.end method
