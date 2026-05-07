.class public final synthetic Lcom/android/wm/shell/pip/phone/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/pip/phone/c0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/pip/phone/c0;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/phone/c0;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/c0;->a:Lcom/android/wm/shell/pip/phone/c0;

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

    invoke-static {p1, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->h(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
