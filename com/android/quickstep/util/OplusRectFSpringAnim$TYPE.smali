.class public final enum Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

.field public static final enum TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

.field public static final enum TYPE_SCALE:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

.field public static final enum TYPE_X:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

.field public static final enum TYPE_Y:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;


# direct methods
.method private static final synthetic $values()[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_X:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_Y:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_SCALE:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const-string v1, "TYPE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_X:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const-string v1, "TYPE_Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_Y:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const-string v1, "TYPE_SCALE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_SCALE:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    const-string v1, "TYPE_ASSIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-static {}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->$values()[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->$VALUES:[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;
    .registers 2

    const-class v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;
    .registers 1

    sget-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->$VALUES:[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    return-object v0
.end method
