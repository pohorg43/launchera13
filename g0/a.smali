.class public final synthetic Lg0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;I)V
    .registers 4

    iput p2, p0, Lg0/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/a;->b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lg0/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lg0/a;->b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->d(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lg0/a;->b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->c(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
