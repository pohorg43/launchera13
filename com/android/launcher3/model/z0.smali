.class public final synthetic Lcom/android/launcher3/model/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/z0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/z0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    check-cast p1, Landroid/app/prediction/AppTargetEvent;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->a(Lcom/android/launcher3/model/QuickstepModelDelegate;Landroid/app/prediction/AppTargetEvent;I)V

    return-void
.end method
