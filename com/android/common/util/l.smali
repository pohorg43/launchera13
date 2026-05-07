.class public final synthetic Lcom/android/common/util/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;II)V
    .registers 5

    iput p3, p0, Lcom/android/common/util/l;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/l;->b:Ljava/lang/Class;

    iput p2, p0, Lcom/android/common/util/l;->c:I

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/common/util/l;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/common/util/l;->b:Ljava/lang/Class;

    iget p0, p0, Lcom/android/common/util/l;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/common/util/FoldMainThreadInitializedObject;->a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/common/util/l;->b:Ljava/lang/Class;

    iget p0, p0, Lcom/android/common/util/l;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->c(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
