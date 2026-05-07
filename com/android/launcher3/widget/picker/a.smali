.class public final synthetic Lcom/android/launcher3/widget/picker/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/widget/picker/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/widget/picker/a;

    invoke-direct {v0}, Lcom/android/launcher3/widget/picker/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/picker/a;->a:Lcom/android/launcher3/widget/picker/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final proxyEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
