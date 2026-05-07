.class public final synthetic Lcom/android/launcher/layout/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/res/Resources;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;II)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/layout/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/b;->b:Landroid/content/res/Resources;

    iput p2, p0, Lcom/android/launcher/layout/b;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/layout/b;->b:Landroid/content/res/Resources;

    iget p0, p0, Lcom/android/launcher/layout/b;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->b(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher/layout/b;->b:Landroid/content/res/Resources;

    iget p0, p0, Lcom/android/launcher/layout/b;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/AutoInstallsLayout;->a(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
