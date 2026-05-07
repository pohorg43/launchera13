.class public final enum Lcom/oplus/quickstep/utils/CompatibleModeEnum;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/CompatibleModeEnum$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/utils/CompatibleModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final Companion:Lcom/oplus/quickstep/utils/CompatibleModeEnum$Companion;

.field public static final enum CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final enum CompatibleModeFourThree:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final enum CompatibleModeFullScreen:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final enum CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final enum CompatibleParaVersionDisable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

.field public static final enum CompatibleParaVersionEnable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;


# instance fields
.field private final compatibleModeValue:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/utils/CompatibleModeEnum;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFullScreen:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFourThree:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionEnable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionDisable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleModeDismiss"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleModeFullScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFullScreen:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleModeSixteenNine"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleModeFourThree"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFourThree:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleParaVersionEnable"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionEnable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    const-string v1, "CompatibleParaVersionDisable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionDisable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-static {}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->$values()[Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->$VALUES:[Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/CompatibleModeEnum$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->Companion:Lcom/oplus/quickstep/utils/CompatibleModeEnum$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->compatibleModeValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/utils/CompatibleModeEnum;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/utils/CompatibleModeEnum;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->$VALUES:[Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    return-object v0
.end method


# virtual methods
.method public final getCompatibleModeValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->compatibleModeValue:I

    return p0
.end method
