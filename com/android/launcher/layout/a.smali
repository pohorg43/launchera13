.class public final synthetic Lcom/android/launcher/layout/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/layout/a;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/a;->a:I

    packed-switch v0, :pswitch_data_38

    goto :goto_30

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x4
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x3
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->d(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x2
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->c(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x1
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->g(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_30
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_22  #00000001
        :pswitch_1b  #00000002
        :pswitch_14  #00000003
        :pswitch_d  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
