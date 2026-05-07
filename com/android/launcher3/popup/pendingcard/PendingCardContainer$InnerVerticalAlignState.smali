.class public final enum Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InnerVerticalAlignState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

.field public static final enum ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

.field public static final enum ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

.field public static final enum ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

.field public static final enum ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;


# direct methods
.method private static final synthetic $values()[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const-string v1, "ALIGN_VERTICAL_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const-string v1, "ALIGN_VERTICAL_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const-string v1, "ALIGN_VERTICAL_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const-string v1, "ALIGN_VERTICAL_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->$values()[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->$VALUES:[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;
    .registers 2

    const-class v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->$VALUES:[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-object v0
.end method
