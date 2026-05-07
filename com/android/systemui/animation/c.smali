.class public final synthetic Lcom/android/systemui/animation/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/AnimatedDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/animation/AnimatedDialog;->c(Lcom/android/systemui/animation/AnimatedDialog;Landroid/view/View;)V

    return-void
.end method
