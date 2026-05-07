.class public final Lcom/oplus/quickstep/utils/OplusOverScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/OplusOverScroll;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusOverScroll;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dampedScroll(FIZ)I
    .registers 4

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    if-nez p3, :cond_10

    invoke-static {p1}, Li1/j;->o(F)I

    move-result p0

    return p0

    :cond_10
    invoke-static {p1, p2}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p0

    return p0
.end method
