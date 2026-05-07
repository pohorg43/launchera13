.class public final enum Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/LayoutUtilsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutArrangementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

.field public static final enum COMPACT:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

.field public static final enum FREE:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    const-string v1, "COMPACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->COMPACT:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    new-instance v1, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    const-string v3, "FREE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->FREE:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->$VALUES:[Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;
    .registers 2

    const-class v0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;
    .registers 1

    sget-object v0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->$VALUES:[Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    invoke-virtual {v0}, [Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    return-object v0
.end method
