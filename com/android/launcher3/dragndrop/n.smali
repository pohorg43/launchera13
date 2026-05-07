.class public final synthetic Lcom/android/launcher3/dragndrop/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/n;->a:I

    return-void
.end method


# virtual methods
.method public final getViewType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/n;->a:I

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DraggableView;->a(I)I

    move-result p0

    return p0
.end method
