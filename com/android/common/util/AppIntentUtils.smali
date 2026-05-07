.class public final Lcom/android/common/util/AppIntentUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/AppIntentUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/AppIntentUtils$Companion;

.field public static final START_CAMERA_KEYCODE:I = 0x121


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/AppIntentUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/AppIntentUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/AppIntentUtils;->Companion:Lcom/android/common/util/AppIntentUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCameraIntent()Landroid/content/Intent;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppIntentUtils;->Companion:Lcom/android/common/util/AppIntentUtils$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/AppIntentUtils$Companion;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
