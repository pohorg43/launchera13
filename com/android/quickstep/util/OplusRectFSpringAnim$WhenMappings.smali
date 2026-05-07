.class public final synthetic Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->values()[Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_X:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_Y:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
