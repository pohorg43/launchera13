.class public final synthetic Lcom/android/launcher3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/b;

.field public static final synthetic c:Lcom/android/launcher3/b;

.field public static final synthetic d:Lcom/android/launcher3/b;

.field public static final synthetic e:Lcom/android/launcher3/b;

.field public static final synthetic f:Lcom/android/launcher3/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/b;->b:Lcom/android/launcher3/b;

    new-instance v0, Lcom/android/launcher3/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/b;->c:Lcom/android/launcher3/b;

    new-instance v0, Lcom/android/launcher3/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/b;->d:Lcom/android/launcher3/b;

    new-instance v0, Lcom/android/launcher3/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/b;

    new-instance v0, Lcom/android/launcher3/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/b;->f:Lcom/android/launcher3/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/b;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    new-instance p0, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x2
    new-instance p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_12  #0x1
    new-instance p0, Lcom/android/launcher3/DeviceProfileExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_18  #0x0
    new-instance p0, Lcom/android/launcher3/AppWidgetResizeFrameExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrameExtFoldScreenImpl;-><init>()V

    return-object p0

    :goto_1e
    new-instance p0, Lcom/android/launcher3/folder/FolderExtImplV2;

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderExtImplV2;-><init>()V

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
