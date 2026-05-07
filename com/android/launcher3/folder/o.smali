.class public final synthetic Lcom/android/launcher3/folder/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/PreviewBackground;

.field public final synthetic c:Lcom/android/launcher3/CellLayout;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;III)V
    .registers 6

    iput p5, p0, Lcom/android/launcher3/folder/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/o;->b:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/o;->c:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/folder/o;->d:I

    iput p4, p0, Lcom/android/launcher3/folder/o;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/o;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/o;->b:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/o;->c:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/folder/o;->d:I

    iget p0, p0, Lcom/android/launcher3/folder/o;->e:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/folder/PreviewBackground;->b(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/folder/o;->b:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/o;->c:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/folder/o;->d:I

    iget p0, p0, Lcom/android/launcher3/folder/o;->e:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/folder/PreviewBackground;->a(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
