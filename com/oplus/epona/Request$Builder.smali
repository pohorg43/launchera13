.class public Lcom/oplus/epona/Request$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActionName:Ljava/lang/String;

.field private final mBundle:Landroid/os/Bundle;

.field private mComponentName:Ljava/lang/String;

.field private mRouteData:Lcom/oplus/epona/route/RouteData;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/epona/Request;
    .registers 8

    new-instance v6, Lcom/oplus/epona/Request;

    iget-object v1, p0, Lcom/oplus/epona/Request$Builder;->mComponentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/epona/Request$Builder;->mActionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/oplus/epona/Request$Builder;->mRouteData:Lcom/oplus/epona/route/RouteData;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/epona/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/oplus/epona/route/RouteData;Lcom/oplus/epona/Request$1;)V

    return-object v6
.end method

.method public setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/epona/Request$Builder;->mActionName:Ljava/lang/String;

    return-object p0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/epona/Request$Builder;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public withBinder(Ljava/lang/String;Landroid/os/IBinder;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withBooleanArray(Ljava/lang/String;[Z)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public withByte(Ljava/lang/String;B)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public withByteArray(Ljava/lang/String;[B)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public withChar(Ljava/lang/String;C)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public withCharArray(Ljava/lang/String;[C)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public withCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public withCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public withCharSequenceList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oplus/epona/Request$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/oplus/epona/Request$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withDouble(Ljava/lang/String;D)Lcom/oplus/epona/Request$Builder;
    .registers 5

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public withDoubleArray(Ljava/lang/String;[D)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public withFloat(Ljava/lang/String;F)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public withFloatArray(Ljava/lang/String;[F)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withIntArray(Ljava/lang/String;[I)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public withIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oplus/epona/Request$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oplus/epona/Request$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;
    .registers 5

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public withLongArray(Ljava/lang/String;[J)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public withParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public withParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oplus/epona/Request$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/oplus/epona/Request$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withRoute(Landroid/content/Context;)Lcom/oplus/epona/Request$Builder;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/epona/Request$Builder;->withRoute(Landroid/content/Context;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withRoute(Landroid/content/Context;I)Lcom/oplus/epona/Request$Builder;
    .registers 4

    new-instance v0, Lcom/oplus/epona/route/RouteData;

    invoke-direct {v0, p1, p2}, Lcom/oplus/epona/route/RouteData;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/epona/Request$Builder;->mRouteData:Lcom/oplus/epona/route/RouteData;

    return-object p0
.end method

.method public withSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public withShort(Ljava/lang/String;S)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public withShortArray(Ljava/lang/String;[S)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withStringArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public withStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oplus/epona/Request$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/epona/Request$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method
