.class public final Lcom/android/launcher3/model/SpecialOtaAppUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

.field private static final PREF_KEY_OTA_SPECIAL_APP_ADDED_PREFIX:Ljava/lang/String; = "ota_need_special_app_added_"

.field private static final TAG:Ljava/lang/String; = "SpecialOtaAppUtils"

.field private static final specialApps$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->Companion:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

    sget-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion$specialApps$2;->INSTANCE:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion$specialApps$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->specialApps$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSpecialApps$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->specialApps$delegate:Ly2/e;

    return-object v0
.end method

.method public static final canAdded(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->Companion:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;->canAdded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isSpecialApp(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->Companion:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;->isSpecialApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final setSpecialAppAdded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/SpecialOtaAppUtils;->Companion:Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/model/SpecialOtaAppUtils$Companion;->setSpecialAppAdded(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
