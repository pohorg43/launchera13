.class public final synthetic Lcom/android/launcher3/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/v;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/v;

    invoke-direct {v0}, Lcom/android/launcher3/v;-><init>()V

    sput-object v0, Lcom/android/launcher3/v;->a:Lcom/android/launcher3/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->b(II)I

    move-result p0

    return p0
.end method
