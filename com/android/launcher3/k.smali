.class public final synthetic Lcom/android/launcher3/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/k;

.field public static final synthetic c:Lcom/android/launcher3/k;

.field public static final synthetic d:Lcom/android/launcher3/k;

.field public static final synthetic e:Lcom/android/launcher3/k;

.field public static final synthetic f:Lcom/android/launcher3/k;

.field public static final synthetic g:Lcom/android/launcher3/k;

.field public static final synthetic h:Lcom/android/launcher3/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->b:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->c:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->d:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->e:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->f:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->g:Lcom/android/launcher3/k;

    new-instance v0, Lcom/android/launcher3/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k;->h:Lcom/android/launcher3/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/k;->a:I

    packed-switch p0, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x5
    new-instance p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x4
    new-instance p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_12  #0x3
    new-instance p0, Lcom/android/quickstep/BaseActivityInterfaceExtTabletImpl;

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterfaceExtTabletImpl;-><init>()V

    return-object p0

    :pswitch_18  #0x2
    new-instance p0, Lcom/android/launcher3/states/RotationHelperExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelperExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_1e  #0x1
    new-instance p0, Lcom/android/launcher3/model/PackageUpdatedTaskExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/model/PackageUpdatedTaskExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_24  #0x0
    new-instance p0, Lcom/android/launcher3/DeviceProfileExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtFoldScreenImpl;-><init>()V

    return-object p0

    :goto_2a
    new-instance p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;-><init>()V

    return-object p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_12  #00000003
        :pswitch_c  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
