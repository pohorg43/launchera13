.class public final synthetic Lcom/android/quickstep/views/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic a:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/c;->a:[F

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/c;->a:[F

    invoke-static {p0, p1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->a([FI)D

    move-result-wide p0

    return-wide p0
.end method
