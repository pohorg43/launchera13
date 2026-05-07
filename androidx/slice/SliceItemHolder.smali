.class public Landroidx/slice/SliceItemHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItemHolder$SliceItemPool;,
        Landroidx/slice/SliceItemHolder$HolderHandler;
    }
.end annotation


# static fields
.field public static sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

.field public static final sSerializeLock:Ljava/lang/Object;


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mCallback:Ljava/lang/Object;

.field public mInt:I

.field public mLong:J

.field public mParcelable:Landroid/os/Parcelable;

.field private mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

.field public mStr:Ljava/lang/String;

.field public mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItemHolder$SliceItemPool;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_d4

    goto/16 :goto_79

    :sswitch_20
    const-string/jumbo v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_79

    :cond_2a
    const/4 v2, 0x7

    goto :goto_79

    :sswitch_2c
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_79

    :cond_35
    const/4 v2, 0x6

    goto :goto_79

    :sswitch_37
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_79

    :cond_40
    const/4 v2, 0x5

    goto :goto_79

    :sswitch_42
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_79

    :cond_4c
    const/4 v2, 0x4

    goto :goto_79

    :sswitch_4e
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_79

    :cond_57
    const/4 v2, 0x3

    goto :goto_79

    :sswitch_59
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_79

    :cond_62
    const/4 v2, 0x2

    goto :goto_79

    :sswitch_64
    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_79

    :cond_6d
    const/4 v2, 0x1

    goto :goto_79

    :sswitch_6f
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_79

    :cond_78
    move v2, v1

    :goto_79
    packed-switch v2, :pswitch_data_f6

    goto :goto_c3

    :pswitch_7d  #0x6
    check-cast p2, Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_c3

    :pswitch_82  #0x5, 0x7
    check-cast p2, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_c3

    :pswitch_87  #0x4
    instance-of p3, p2, Landroid/text/Spanned;

    if-eqz p3, :cond_92

    check-cast p2, Landroid/text/Spanned;

    invoke-static {p2, v1}, Landroidx/core/text/HtmlCompat;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    :cond_92
    check-cast p2, Ljava/lang/String;

    :goto_94
    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    goto :goto_c3

    :pswitch_97  #0x3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    goto :goto_c3

    :pswitch_a0  #0x2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    goto :goto_c3

    :pswitch_a9  #0x1
    check-cast p2, Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    goto :goto_c3

    :pswitch_ae  #0x0
    check-cast p2, Landroidx/core/util/Pair;

    iget-object v0, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_bb

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_bd

    :cond_bb
    if-eqz p3, :cond_cb

    :goto_bd
    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    :goto_c3
    sget-object p2, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz p2, :cond_ca

    invoke-interface {p2, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    :cond_ca
    return-void

    :cond_cb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot write callback to parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x54d081ca -> :sswitch_6f
        -0x5220cf7e -> :sswitch_64
        0x197ef -> :sswitch_59
        0x32c67c -> :sswitch_4e
        0x36452d -> :sswitch_42
        0x5faa95b -> :sswitch_37
        0x5fb57ca -> :sswitch_2c
        0x6873d92 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_ae  #00000000
        :pswitch_a9  #00000001
        :pswitch_a0  #00000002
        :pswitch_97  #00000003
        :pswitch_87  #00000004
        :pswitch_82  #00000005
        :pswitch_7d  #00000006
        :pswitch_82  #00000007
    .end packed-switch
.end method


# virtual methods
.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    :cond_7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c6

    goto/16 :goto_71

    :sswitch_18
    const-string/jumbo v2, "slice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_71

    :cond_22
    const/4 v1, 0x7

    goto :goto_71

    :sswitch_24
    const-string v2, "input"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_71

    :cond_2d
    const/4 v1, 0x6

    goto :goto_71

    :sswitch_2f
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_71

    :cond_38
    const/4 v1, 0x5

    goto :goto_71

    :sswitch_3a
    const-string/jumbo v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_71

    :cond_44
    const/4 v1, 0x4

    goto :goto_71

    :sswitch_46
    const-string v2, "long"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_71

    :cond_4f
    const/4 v1, 0x3

    goto :goto_71

    :sswitch_51
    const-string v2, "int"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_71

    :cond_5a
    const/4 v1, 0x2

    goto :goto_71

    :sswitch_5c
    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto :goto_71

    :cond_65
    const/4 v1, 0x1

    goto :goto_71

    :sswitch_67
    const-string v2, "action"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    packed-switch v1, :pswitch_data_e8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized format "

    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_80  #0x6
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    return-object p0

    :pswitch_83  #0x5, 0x7
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    return-object p0

    :pswitch_86  #0x4
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_91

    goto :goto_98

    :cond_91
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :cond_98
    :goto_98
    const-string p0, ""

    return-object p0

    :pswitch_9b  #0x3
    iget-wide p0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_a2  #0x2
    iget p0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a9  #0x1
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    return-object p0

    :pswitch_ac  #0x0
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-nez p1, :cond_b6

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    if-nez v0, :cond_b6

    const/4 p0, 0x0

    return-object p0

    :cond_b6
    new-instance v0, Landroidx/core/util/Pair;

    if-eqz p1, :cond_bb

    goto :goto_bd

    :cond_bb
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    :goto_bd
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast p0, Landroidx/slice/Slice;

    invoke-direct {v0, p1, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x54d081ca -> :sswitch_67
        -0x5220cf7e -> :sswitch_5c
        0x197ef -> :sswitch_51
        0x32c67c -> :sswitch_46
        0x36452d -> :sswitch_3a
        0x5faa95b -> :sswitch_2f
        0x5fb57ca -> :sswitch_24
        0x6873d92 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_ac  #00000000
        :pswitch_a9  #00000001
        :pswitch_a2  #00000002
        :pswitch_9b  #00000003
        :pswitch_86  #00000004
        :pswitch_83  #00000005
        :pswitch_80  #00000006
        :pswitch_83  #00000007
    .end packed-switch
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroidx/slice/SliceItemHolder$SliceItemPool;->release(Landroidx/slice/SliceItemHolder;)V

    :cond_7
    return-void
.end method
