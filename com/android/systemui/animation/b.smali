.class public final synthetic Lcom/android/systemui/animation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# static fields
.field public static final synthetic a:Lcom/android/systemui/animation/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/animation/b;

    invoke-direct {v0}, Lcom/android/systemui/animation/b;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/systemui/animation/AnimatedDialog;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
