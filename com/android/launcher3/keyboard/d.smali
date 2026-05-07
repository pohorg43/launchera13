.class public final synthetic Lcom/android/launcher3/keyboard/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntBiFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/keyboard/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/keyboard/d;

    invoke-direct {v0}, Lcom/android/launcher3/keyboard/d;-><init>()V

    sput-object v0, Lcom/android/launcher3/keyboard/d;->a:Lcom/android/launcher3/keyboard/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method
