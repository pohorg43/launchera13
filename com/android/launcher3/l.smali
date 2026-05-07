.class public final synthetic Lcom/android/launcher3/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/l;

.field public static final synthetic c:Lcom/android/launcher3/l;

.field public static final synthetic d:Lcom/android/launcher3/l;

.field public static final synthetic e:Lcom/android/launcher3/l;

.field public static final synthetic f:Lcom/android/launcher3/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/l;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l;->b:Lcom/android/launcher3/l;

    new-instance v0, Lcom/android/launcher3/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/l;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/l;

    new-instance v0, Lcom/android/launcher3/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/l;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l;->d:Lcom/android/launcher3/l;

    new-instance v0, Lcom/android/launcher3/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/l;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l;->e:Lcom/android/launcher3/l;

    new-instance v0, Lcom/android/launcher3/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/l;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l;->f:Lcom/android/launcher3/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/l;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    new-instance p0, Lcom/android/quickstep/views/PreviewPositionHelperExtTabletImpl;

    invoke-direct {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtTabletImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x2
    new-instance p0, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;-><init>()V

    return-object p0

    :pswitch_12  #0x1
    new-instance p0, Lcom/android/launcher3/statemanager/StateManagerExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManagerExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_18  #0x0
    new-instance p0, Lcom/android/launcher3/DeviceProfileExtTabletImpl;

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtTabletImpl;-><init>()V

    return-object p0

    :goto_1e
    new-instance p0, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
