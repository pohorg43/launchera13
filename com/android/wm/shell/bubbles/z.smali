.class public final synthetic Lcom/android/wm/shell/bubbles/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/bubbles/z;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/bubbles/z;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/z;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/z;->a:Lcom/android/wm/shell/bubbles/z;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->c(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
